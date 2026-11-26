package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class AudioPlayerListener implements View.OnClickListener, MediaPlayer.OnCompletionListener {
    private static final String TAG = "AudioPlayerListener";
    private ImageView actionButton;
    private final Context context;
    private int currentAudioPlay;
    private List<FieldValueMobDataBean> dataSources;
    private final QueFormBean queFormBean;
    private MediaPlayer mPlayer = null;
    private boolean flag = true;

    public AudioPlayerListener(Context context, QueFormBean queFormBean, String str) {
        this.currentAudioPlay = -1;
        this.dataSources = null;
        this.queFormBean = queFormBean;
        this.context = context;
        if (str == null || str.trim().length() <= 0) {
            Log.i(TAG, "No Audio list found in dataMap");
            return;
        }
        Log.i(TAG, "Data map is Found is : " + str);
        List<FieldValueMobDataBean> dataMapValues = UtilBean.getDataMapValues(str);
        this.dataSources = dataMapValues;
        if (dataMapValues == null || dataMapValues.isEmpty()) {
            Log.i(TAG, "No Files Found in local");
        } else {
            this.currentAudioPlay = 0;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.actionButton = (ImageView) view;
        if (this.flag) {
            try {
                startPlaying();
                this.actionButton.setImageResource(R.drawable.stop_audio);
                this.flag = !this.flag;
                setMandatory(true);
                return;
            } catch (Exception e) {
                Log.e(TAG, "Audio Player not started", e);
                this.actionButton.setImageResource(R.drawable.play_audio);
                SewaUtil.generateToast(this.context, LabelConstants.NO_AUDIO_TO_PLAY);
                setMandatory(false);
                return;
            }
        }
        try {
            stopPlaying();
            this.actionButton.setImageResource(R.drawable.play_audio);
            this.flag = !this.flag;
            setMandatory(false);
        } catch (Exception e2) {
            Log.e(TAG, "Audio Player not stopped", e2);
            this.actionButton.setImageResource(R.drawable.stop_audio);
            SewaUtil.generateToast(this.context, "Audio can not be stopped");
        }
    }

    private void startPlaying() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        List<FieldValueMobDataBean> list = this.dataSources;
        if (list != null && !list.isEmpty()) {
            this.mPlayer = new MediaPlayer();
            while (this.currentAudioPlay < this.dataSources.size()) {
                String str = SewaConstants.DIR_DOWNLOADED + this.dataSources.get(this.currentAudioPlay).getValue();
                if (UtilBean.isFileExists(str)) {
                    Log.i(TAG, str + " is found and ready to play");
                    try {
                        this.mPlayer.setDataSource(str);
                        break;
                    } catch (Exception e) {
                        Log.e(TAG, null, e);
                        this.currentAudioPlay++;
                    }
                } else {
                    this.currentAudioPlay++;
                }
            }
            this.mPlayer.prepare();
            this.mPlayer.start();
            this.mPlayer.setOnCompletionListener(this);
            return;
        }
        Log.e(getClass().getSimpleName(), LabelConstants.NO_AUDIO_TO_PLAY);
        throw null;
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
        this.currentAudioPlay++;
        try {
            startPlaying();
        } catch (Exception e) {
            Log.e(TAG, "Audio Player not started", e);
            if (this.actionButton != null) {
                this.actionButton.setImageResource(R.drawable.play_audio);
                this.flag = !this.flag;
                this.currentAudioPlay = 0;
                setMandatory(false);
            }
        }
    }

    private void setMandatory(boolean z) {
        if (z) {
            this.queFormBean.setAnswer(null);
            this.queFormBean.setMandatorymessage(LabelConstants.AUDIO_IS_PLAYING);
            this.queFormBean.setIsmandatory("T");
            return;
        }
        this.queFormBean.setIsmandatory("F");
    }
}
