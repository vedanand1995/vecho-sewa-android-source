package com.argusoft.sewa.android.app.support;

import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class SupportAudio {
    private final Listener listener;
    private MediaPlayer player;
    private String playingKey;

    public interface Listener {
        void onChanged(String str);
    }

    public SupportAudio(Listener listener) {
        this.listener = listener;
    }

    public boolean isPlaying(String str) {
        return str != null && str.equals(this.playingKey);
    }

    public long positionMs() {
        try {
            if (this.player == null) {
                return 0L;
            }
            return r2.getCurrentPosition();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public long durationMs() {
        try {
            if (this.player == null) {
                return 0L;
            }
            return r2.getDuration();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public boolean toggle(String str, File file) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        if (isPlaying(str)) {
            stop();
            return true;
        }
        stop();
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.player = mediaPlayer;
            mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(1).build());
            this.player.setDataSource(file.getAbsolutePath());
            this.player.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.argusoft.sewa.android.app.support.SupportAudio$$ExternalSyntheticLambda0
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) throws IllegalStateException {
                    this.f$0.m592xc121e8ef(mediaPlayer2);
                }
            });
            this.player.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.argusoft.sewa.android.app.support.SupportAudio$$ExternalSyntheticLambda1
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                    return this.f$0.m593xeefa834e(mediaPlayer2, i, i2);
                }
            });
            this.player.prepare();
            this.player.start();
            this.playingKey = str;
            this.listener.onChanged(str);
            return true;
        } catch (Exception e) {
            Log.e("SupportAudio", "Could not play", e);
            stop();
            return false;
        }
    }

    /* renamed from: lambda$toggle$0$com-argusoft-sewa-android-app-support-SupportAudio, reason: not valid java name */
    /* synthetic */ void m592xc121e8ef(MediaPlayer mediaPlayer) throws IllegalStateException {
        stop();
    }

    /* renamed from: lambda$toggle$1$com-argusoft-sewa-android-app-support-SupportAudio, reason: not valid java name */
    /* synthetic */ boolean m593xeefa834e(MediaPlayer mediaPlayer, int i, int i2) throws IllegalStateException {
        Log.e("SupportAudio", "Playback error " + i + "/" + i2);
        stop();
        return true;
    }

    public void stop() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.player;
        boolean z = mediaPlayer != null;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
            } catch (Exception unused) {
            }
            try {
                this.player.release();
            } catch (Exception unused2) {
            }
            this.player = null;
        }
        this.playingKey = null;
        if (z) {
            this.listener.onChanged(null);
        }
    }
}
