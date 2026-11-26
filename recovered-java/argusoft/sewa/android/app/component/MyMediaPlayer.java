package com.argusoft.sewa.android.app.component;

import android.media.MediaPlayer;

/* loaded from: classes.dex */
public class MyMediaPlayer extends MediaPlayer {
    @Override // android.media.MediaPlayer
    public void stop() {
    }

    @Override // android.media.MediaPlayer
    public void seekTo(int i) throws IllegalStateException {
        if (super.getCurrentPosition() > i) {
            super.seekTo(i);
        }
    }
}
