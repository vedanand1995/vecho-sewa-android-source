package com.argusoft.sewa.android.app.asynctask;

import android.os.AsyncTask;
import com.argusoft.sewa.android.app.core.SewaService;

/* loaded from: classes.dex */
public class ServerIsAliveAsyncTask extends AsyncTask<Void, Void, Boolean> {
    SewaService sewaService;

    public ServerIsAliveAsyncTask(SewaService sewaService) {
        this.sewaService = sewaService;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Boolean doInBackground(Void... voidArr) {
        return Boolean.valueOf(this.sewaService.getServerIsAlive());
    }
}
