package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.io.IOException;

/* loaded from: classes.dex */
public class SimulationsAudioPlayerListener implements View.OnClickListener, MediaPlayer.OnCompletionListener {
    private static final String TAG = "AudioPlayerListener";
    private ImageView actionButton;
    private final Context context;
    private final String path;
    private MediaPlayer mPlayer = null;
    private boolean flag = true;

    public SimulationsAudioPlayerListener(Context context, String str) {
        this.context = context;
        this.path = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.actionButton = (ImageView) view;
        if (this.flag) {
            try {
                startPlaying();
                this.actionButton.setImageResource(R.drawable.stop_audio);
                this.flag = !this.flag;
                return;
            } catch (Exception e) {
                Log.e(TAG, "Audio Player not started", e);
                this.actionButton.setImageResource(R.drawable.play_audio);
                SewaUtil.generateToast(this.context, LabelConstants.NO_AUDIO_TO_PLAY);
                return;
            }
        }
        try {
            stopPlaying();
            this.actionButton.setImageResource(R.drawable.play_audio);
            this.flag = !this.flag;
        } catch (Exception e2) {
            Log.e(TAG, "Audio Player not stopped", e2);
            this.actionButton.setImageResource(R.drawable.stop_audio);
            SewaUtil.generateToast(this.context, "Audio can not be stopped");
        }
    }

    private void startPlaying() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mPlayer = new MediaPlayer();
        if (UtilBean.isFileExists(this.path)) {
            Log.i(TAG, this.path + " is found and ready to play");
            try {
                this.mPlayer.setDataSource(this.path);
            } catch (Exception e) {
                Log.e(TAG, null, e);
            }
        }
        this.mPlayer.prepare();
        this.mPlayer.start();
        this.mPlayer.setOnCompletionListener(this);
    }

    private void stopPlaying() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.mPlayer.release();
                this.mPlayer = null;
            } catch (Exception e) {
                Log.e(TAG, "Audio Player not stopped", e);
            }
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        try {
            stopPlaying();
            ImageView imageView = this.actionButton;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.play_audio);
                this.flag = !this.flag;
            }
        } catch (Exception e) {
            Log.e(TAG, "Audio Player not started", e);
        }
    }
}
