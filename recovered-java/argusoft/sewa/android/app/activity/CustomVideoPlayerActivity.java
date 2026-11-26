package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.MediaController;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CustomVideoPlayerActivity extends MenuActivity implements MediaPlayer.OnCompletionListener, SurfaceHolder.Callback, MediaController.MediaPlayerControl {
    private static final String TAG = "CustomVideoPlayer";
    private int currentPosition;
    private List<FieldValueMobDataBean> dataSources;
    private String fileLocation;
    private MediaPlayer mediaPlayer;
    private int playingSourceNumber;
    private SurfaceHolder surfaceHolder;
    private SurfaceView surfaceView;

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 20;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws IllegalStateException {
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this, -1, 1, new LinearLayout.LayoutParams(-1, -1));
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString(GlobalTypes.DATA_MAP);
            boolean z = extras.getBoolean("isFromAnnouncement");
            String string2 = extras.getString("fileLocation");
            this.fileLocation = string2;
            if (string2 == null || string2.isEmpty()) {
                this.fileLocation = SewaConstants.DIR_DOWNLOADED;
            }
            if (string != null && string.trim().length() > 0) {
                Log.i(TAG, "Data map is Found is : " + string);
                if (z) {
                    FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
                    fieldValueMobDataBean.setValue(string);
                    ArrayList arrayList = new ArrayList();
                    this.dataSources = arrayList;
                    arrayList.add(fieldValueMobDataBean);
                } else {
                    this.dataSources = UtilBean.getDataMapValues(string);
                }
            }
        }
        List<FieldValueMobDataBean> list = this.dataSources;
        if (list != null && !list.isEmpty()) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mediaPlayer = mediaPlayer;
            mediaPlayer.setOnCompletionListener(this);
            if (playVideoSequentially()) {
                this.mediaPlayer.setScreenOnWhilePlaying(true);
                SurfaceView surfaceView = new SurfaceView(this);
                this.surfaceView = surfaceView;
                SurfaceHolder holder = surfaceView.getHolder();
                this.surfaceHolder = holder;
                holder.addCallback(this);
                this.surfaceView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                linearLayout.addView(this.surfaceView);
            } else {
                linearLayout.addView(MyStaticComponents.generateTitleView(this, LabelConstants.NO_VIDEO_TO_PLAY));
            }
        } else {
            linearLayout.addView(MyStaticComponents.generateTitleView(this, LabelConstants.NO_VIDEO_TO_PLAY));
        }
        setContentView(linearLayout);
    }

    private boolean playVideoSequentially() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        boolean z = true;
        while (this.playingSourceNumber < this.dataSources.size()) {
            String str = this.fileLocation + "/" + this.dataSources.get(this.playingSourceNumber).getValue();
            if (UtilBean.isFileExists(str)) {
                Log.i(TAG, str + " is found and ready to play");
                try {
                    this.mediaPlayer.reset();
                    this.mediaPlayer.setDataSource(str);
                    this.mediaPlayer.prepare();
                    this.mediaPlayer.start();
                    int i = this.currentPosition;
                    if (i > 0) {
                        this.mediaPlayer.seekTo(i);
                    }
                    return true;
                } catch (Exception e) {
                    Log.e(TAG, null, e);
                    this.playingSourceNumber++;
                    this.currentPosition = 0;
                    if (z) {
                        SewaUtil.generateToast(this, LabelConstants.VIDEO_FILE_CORRUPTED);
                        z = false;
                    }
                    this.mediaPlayer.reset();
                    UtilBean.deleteFile(str);
                }
            } else {
                Log.i(TAG, "File not found");
                this.playingSourceNumber++;
                this.currentPosition = 0;
                if (z) {
                    SewaUtil.generateToast(this, LabelConstants.VIDEO_FILE_NOT_DOWNLOADED);
                    z = false;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.argusoft.sewa.android.app.activity.CustomVideoPlayerActivity$1] */
    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) throws IllegalStateException {
        Log.v(TAG, "surfaceCreated Called");
        this.mediaPlayer.setDisplay(surfaceHolder);
        try {
            MediaController mediaController = new MediaController(this);
            mediaController.setMediaPlayer(this);
            mediaController.setAnchorView(this.surfaceView);
            mediaController.bringToFront();
            mediaController.show();
            this.surfaceView.setOnTouchListener(new View.OnTouchListener() { // from class: com.argusoft.sewa.android.app.activity.CustomVideoPlayerActivity.1
                private MediaController mc;

                public View.OnTouchListener setMediaController(MediaController mediaController2) {
                    this.mc = mediaController2;
                    return this;
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    this.mc.show();
                    return true;
                }
            }.setMediaController(mediaController));
        } catch (Exception e) {
            Log.e(TAG, null, e);
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        super.onPause();
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            this.currentPosition = mediaPlayer.getCurrentPosition();
            this.mediaPlayer.stop();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.v(TAG, "surfaceChanged called");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.v(TAG, "surfaceDestroyed Called");
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) throws IllegalStateException {
        Log.v(TAG, "onCompletion Called");
        this.playingSourceNumber++;
        this.currentPosition = 0;
        if (playVideoSequentially()) {
            return;
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            this.mediaPlayer.stop();
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void finish() throws IllegalStateException {
        getWindow().clearFlags(128);
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mediaPlayer.release();
        }
        this.mediaPlayer = null;
        this.currentPosition = 0;
        this.playingSourceNumber = 0;
        this.surfaceHolder = null;
        this.surfaceView = null;
        super.finish();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo(i);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws IllegalStateException {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        onBackPressed();
        return true;
    }
}
