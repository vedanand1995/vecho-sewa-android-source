package com.argusoft.sewa.android.app.receiver;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* loaded from: classes.dex */
public class UploadResultReceiver extends ResultReceiver {
    private final Receiver receiver;

    public interface Receiver {
        void onUploadFinished();
    }

    public UploadResultReceiver(Handler handler, Receiver receiver) {
        super(handler);
        this.receiver = receiver;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        Receiver receiver;
        if (i != 100 || (receiver = this.receiver) == null) {
            return;
        }
        receiver.onUploadFinished();
    }
}
