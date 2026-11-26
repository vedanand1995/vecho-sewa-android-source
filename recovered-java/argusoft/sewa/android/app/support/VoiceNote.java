package com.argusoft.sewa.android.app.support;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes.dex */
public class VoiceNote {
    private static final int MAX_MS = 180000;
    private final Context context;
    private File file;
    private long lengthMs;
    private PlaybackListener playbackListener;
    private MediaPlayer player;
    private MediaRecorder recorder;
    private long startedAt;

    public interface PlaybackListener {
        void onPlaybackStopped();
    }

    public VoiceNote(Context context) {
        this.context = context.getApplicationContext();
    }

    public boolean isRecording() {
        return this.recorder != null;
    }

    public File file() {
        File file;
        if (this.recorder != null || (file = this.file) == null || !file.exists() || this.file.length() <= 0) {
            return null;
        }
        return this.file;
    }

    public long lengthMs() {
        return this.lengthMs;
    }

    public boolean start() throws IllegalStateException, IOException, IllegalArgumentException {
        discard();
        File file = new File(this.context.getFilesDir(), SupportLabels.SUPPORT);
        file.mkdirs();
        this.file = new File(file, "voice_" + System.currentTimeMillis() + ".m4a");
        try {
            MediaRecorder mediaRecorder = new MediaRecorder();
            this.recorder = mediaRecorder;
            mediaRecorder.setAudioSource(1);
            this.recorder.setOutputFormat(2);
            this.recorder.setAudioEncoder(3);
            this.recorder.setAudioSamplingRate(16000);
            this.recorder.setAudioEncodingBitRate(32000);
            this.recorder.setMaxDuration(MAX_MS);
            this.recorder.setOutputFile(this.file.getAbsolutePath());
            this.recorder.prepare();
            this.recorder.start();
            this.startedAt = SystemClock.elapsedRealtime();
            return true;
        } catch (Exception e) {
            Log.e("VoiceNote", "Could not start recording", e);
            releaseRecorder();
            this.file = null;
            return false;
        }
    }

    public boolean stop() throws IllegalStateException {
        boolean z;
        MediaRecorder mediaRecorder = this.recorder;
        if (mediaRecorder == null) {
            return false;
        }
        try {
            mediaRecorder.stop();
            z = true;
        } catch (RuntimeException unused) {
            z = false;
        }
        this.lengthMs = SystemClock.elapsedRealtime() - this.startedAt;
        releaseRecorder();
        if (z && this.lengthMs >= 700) {
            return true;
        }
        discard();
        return false;
    }

    public void setPlaybackListener(PlaybackListener playbackListener) {
        this.playbackListener = playbackListener;
    }

    public boolean isPlaying() {
        return this.player != null;
    }

    public long playedMs() {
        try {
            if (this.player == null) {
                return 0L;
            }
            return r2.getCurrentPosition();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public boolean play() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        File file = file();
        if (file == null) {
            return false;
        }
        stopPlaying();
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.player = mediaPlayer;
            mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(1).build());
            this.player.setDataSource(file.getAbsolutePath());
            this.player.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.argusoft.sewa.android.app.support.VoiceNote$$ExternalSyntheticLambda0
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) throws IllegalStateException {
                    this.f$0.m603lambda$play$0$comargusoftsewaandroidappsupportVoiceNote(mediaPlayer2);
                }
            });
            this.player.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.argusoft.sewa.android.app.support.VoiceNote$$ExternalSyntheticLambda1
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                    return this.f$0.m604lambda$play$1$comargusoftsewaandroidappsupportVoiceNote(mediaPlayer2, i, i2);
                }
            });
            this.player.prepare();
            this.player.start();
            return true;
        } catch (Exception e) {
            Log.e("VoiceNote", "Could not play", e);
            stopPlaying();
            return false;
        }
    }

    /* renamed from: lambda$play$0$com-argusoft-sewa-android-app-support-VoiceNote, reason: not valid java name */
    /* synthetic */ void m603lambda$play$0$comargusoftsewaandroidappsupportVoiceNote(MediaPlayer mediaPlayer) throws IllegalStateException {
        stoppedByItself();
    }

    /* renamed from: lambda$play$1$com-argusoft-sewa-android-app-support-VoiceNote, reason: not valid java name */
    /* synthetic */ boolean m604lambda$play$1$comargusoftsewaandroidappsupportVoiceNote(MediaPlayer mediaPlayer, int i, int i2) throws IllegalStateException {
        Log.e("VoiceNote", "Playback error " + i + "/" + i2);
        stoppedByItself();
        return true;
    }

    private void stoppedByItself() throws IllegalStateException {
        stopPlaying();
        PlaybackListener playbackListener = this.playbackListener;
        if (playbackListener != null) {
            playbackListener.onPlaybackStopped();
        }
    }

    public void stopPlaying() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.player;
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
    }

    public void handOver() throws IllegalStateException {
        stopPlaying();
        this.file = null;
        this.lengthMs = 0L;
    }

    public void discard() throws IllegalStateException {
        stopPlaying();
        releaseRecorder();
        File file = this.file;
        if (file != null) {
            file.delete();
            this.file = null;
        }
        this.lengthMs = 0L;
    }

    private void releaseRecorder() {
        MediaRecorder mediaRecorder = this.recorder;
        if (mediaRecorder != null) {
            try {
                mediaRecorder.release();
            } catch (Exception unused) {
            }
            this.recorder = null;
        }
    }

    public static String clock(long j) {
        long jMax = Math.max(0L, j / 1000);
        return (jMax / 60) + ":" + String.format(Locale.ROOT, "%02d", Long.valueOf(jMax % 60));
    }
}
