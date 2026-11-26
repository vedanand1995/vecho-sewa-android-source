package com.argusoft.sewa.android.app.lms;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import java.util.Formatter;
import java.util.Locale;
import org.joda.time.DateTimeConstants;

/* loaded from: classes.dex */
public class MyVideoMediaController extends FrameLayout {
    private static final int FADE_OUT = 1;
    private static final int HIDE_COMPLETE = 8;
    private static final int HIDE_ERROR = 6;
    private static final int HIDE_LOADING = 4;
    private static final int SHOW_COMPLETE = 7;
    private static final int SHOW_ERROR = 5;
    private static final int SHOW_LOADING = 3;
    private static final int SHOW_PROGRESS = 2;
    private static final int STATE_COMPLETE = 5;
    private static final int STATE_ERROR = 4;
    private static final int STATE_LOADING = 3;
    private static final int STATE_PAUSE = 2;
    private static final int STATE_PLAYING = 1;
    private static final int sDefaultTimeout = 3000;
    private ViewGroup errorLayout;
    boolean handled;
    private ViewGroup loadingLayout;
    private View mBackButton;
    private View.OnClickListener mBackListener;
    private View mCenterPlayButton;
    private View.OnClickListener mCenterPlayListener;
    private Context mContext;
    private View mControlLayout;
    private TextView mCurrentTime;
    private boolean mDragging;
    private TextView mEndTime;
    StringBuilder mFormatBuilder;
    Formatter mFormatter;
    private final Handler mHandler;
    private boolean mIsFullScreen;
    private View.OnClickListener mPauseListener;
    private MediaPlayerControl mPlayer;
    private ProgressBar mProgress;
    private boolean mProgressBarEnabled;
    private boolean mScalable;
    private ImageButton mScaleButton;
    private View.OnClickListener mScaleListener;
    private SeekBar.OnSeekBarChangeListener mSeekListener;
    private boolean mShowing;
    private int mState;
    private TextView mTitle;
    private View mTitleLayout;
    private View.OnTouchListener mTouchListener;
    private ImageButton mTurnButton;

    public interface MediaPlayerControl {
        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        void closePlayer();

        int getBufferPercentage();

        int getCurrentPosition();

        int getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(int i);

        void setFullscreen(boolean z);

        void setFullscreen(boolean z, int i);

        void start();
    }

    public MyVideoMediaController(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mShowing = true;
        this.mScalable = false;
        this.mIsFullScreen = false;
        this.mState = 3;
        this.mProgressBarEnabled = true;
        this.mHandler = new Handler() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        MyVideoMediaController.this.hide();
                        break;
                    case 2:
                        int progress = MyVideoMediaController.this.setProgress();
                        if (!MyVideoMediaController.this.mDragging && MyVideoMediaController.this.mShowing && MyVideoMediaController.this.mPlayer != null && MyVideoMediaController.this.mPlayer.isPlaying()) {
                            sendMessageDelayed(obtainMessage(2), 1000 - (progress % 1000));
                            break;
                        }
                        break;
                    case 3:
                        MyVideoMediaController.this.show();
                        MyVideoMediaController.this.showCenterView(R.id.loading_layout);
                        break;
                    case 4:
                    case 6:
                    case 8:
                        MyVideoMediaController.this.hide();
                        MyVideoMediaController.this.hideCenterView();
                        break;
                    case 5:
                        MyVideoMediaController.this.show();
                        MyVideoMediaController.this.showCenterView(R.id.error_layout);
                        break;
                    case 7:
                        MyVideoMediaController.this.showCenterView(R.id.center_play_btn);
                        break;
                }
            }
        };
        this.handled = false;
        this.mTouchListener = new View.OnTouchListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || !MyVideoMediaController.this.mShowing) {
                    return false;
                }
                MyVideoMediaController.this.hide();
                MyVideoMediaController.this.handled = true;
                return true;
            }
        };
        this.mPauseListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyVideoMediaController.this.mPlayer != null) {
                    MyVideoMediaController.this.doPauseResume();
                    MyVideoMediaController.this.show(3000);
                }
            }
        };
        this.mScaleListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyVideoMediaController.this.mIsFullScreen = !r2.mIsFullScreen;
                MyVideoMediaController.this.updateScaleButton();
                MyVideoMediaController.this.updateBackButton();
                MyVideoMediaController.this.mPlayer.setFullscreen(MyVideoMediaController.this.mIsFullScreen);
            }
        };
        this.mBackListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyVideoMediaController.this.mIsFullScreen) {
                    MyVideoMediaController.this.mIsFullScreen = false;
                    MyVideoMediaController.this.updateScaleButton();
                    MyVideoMediaController.this.updateBackButton();
                    MyVideoMediaController.this.mPlayer.setFullscreen(false);
                }
            }
        };
        this.mCenterPlayListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyVideoMediaController.this.hideCenterView();
                MyVideoMediaController.this.mPlayer.start();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.7
            int newPosition = 0;
            boolean change = false;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (MyVideoMediaController.this.mPlayer == null) {
                    return;
                }
                MyVideoMediaController.this.show(DateTimeConstants.MILLIS_PER_HOUR);
                MyVideoMediaController.this.mDragging = true;
                MyVideoMediaController.this.mHandler.removeMessages(2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (MyVideoMediaController.this.mPlayer == null || !z) {
                    return;
                }
                this.newPosition = (int) ((MyVideoMediaController.this.mPlayer.getDuration() * i) / 1000);
                this.change = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (MyVideoMediaController.this.mPlayer == null) {
                    return;
                }
                if (this.change) {
                    MyVideoMediaController.this.mPlayer.seekTo(this.newPosition);
                    if (MyVideoMediaController.this.mCurrentTime != null) {
                        MyVideoMediaController.this.mCurrentTime.setText(MyVideoMediaController.this.stringForTime(this.newPosition));
                    }
                }
                MyVideoMediaController.this.mDragging = false;
                MyVideoMediaController.this.setProgress();
                MyVideoMediaController.this.updatePausePlay();
                MyVideoMediaController.this.show(3000);
                MyVideoMediaController.this.mShowing = true;
                MyVideoMediaController.this.mHandler.sendEmptyMessage(2);
            }
        };
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MyVideoMediaController);
        this.mScalable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MyVideoMediaController_my_video_scalable, false);
        typedArrayObtainStyledAttributes.recycle();
        init(context);
    }

    public MyVideoMediaController(Context context) {
        super(context);
        this.mShowing = true;
        this.mScalable = false;
        this.mIsFullScreen = false;
        this.mState = 3;
        this.mProgressBarEnabled = true;
        this.mHandler = new Handler() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        MyVideoMediaController.this.hide();
                        break;
                    case 2:
                        int progress = MyVideoMediaController.this.setProgress();
                        if (!MyVideoMediaController.this.mDragging && MyVideoMediaController.this.mShowing && MyVideoMediaController.this.mPlayer != null && MyVideoMediaController.this.mPlayer.isPlaying()) {
                            sendMessageDelayed(obtainMessage(2), 1000 - (progress % 1000));
                            break;
                        }
                        break;
                    case 3:
                        MyVideoMediaController.this.show();
                        MyVideoMediaController.this.showCenterView(R.id.loading_layout);
                        break;
                    case 4:
                    case 6:
                    case 8:
                        MyVideoMediaController.this.hide();
                        MyVideoMediaController.this.hideCenterView();
                        break;
                    case 5:
                        MyVideoMediaController.this.show();
                        MyVideoMediaController.this.showCenterView(R.id.error_layout);
                        break;
                    case 7:
                        MyVideoMediaController.this.showCenterView(R.id.center_play_btn);
                        break;
                }
            }
        };
        this.handled = false;
        this.mTouchListener = new View.OnTouchListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || !MyVideoMediaController.this.mShowing) {
                    return false;
                }
                MyVideoMediaController.this.hide();
                MyVideoMediaController.this.handled = true;
                return true;
            }
        };
        this.mPauseListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyVideoMediaController.this.mPlayer != null) {
                    MyVideoMediaController.this.doPauseResume();
                    MyVideoMediaController.this.show(3000);
                }
            }
        };
        this.mScaleListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyVideoMediaController.this.mIsFullScreen = !r2.mIsFullScreen;
                MyVideoMediaController.this.updateScaleButton();
                MyVideoMediaController.this.updateBackButton();
                MyVideoMediaController.this.mPlayer.setFullscreen(MyVideoMediaController.this.mIsFullScreen);
            }
        };
        this.mBackListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyVideoMediaController.this.mIsFullScreen) {
                    MyVideoMediaController.this.mIsFullScreen = false;
                    MyVideoMediaController.this.updateScaleButton();
                    MyVideoMediaController.this.updateBackButton();
                    MyVideoMediaController.this.mPlayer.setFullscreen(false);
                }
            }
        };
        this.mCenterPlayListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyVideoMediaController.this.hideCenterView();
                MyVideoMediaController.this.mPlayer.start();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoMediaController.7
            int newPosition = 0;
            boolean change = false;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (MyVideoMediaController.this.mPlayer == null) {
                    return;
                }
                MyVideoMediaController.this.show(DateTimeConstants.MILLIS_PER_HOUR);
                MyVideoMediaController.this.mDragging = true;
                MyVideoMediaController.this.mHandler.removeMessages(2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (MyVideoMediaController.this.mPlayer == null || !z) {
                    return;
                }
                this.newPosition = (int) ((MyVideoMediaController.this.mPlayer.getDuration() * i) / 1000);
                this.change = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (MyVideoMediaController.this.mPlayer == null) {
                    return;
                }
                if (this.change) {
                    MyVideoMediaController.this.mPlayer.seekTo(this.newPosition);
                    if (MyVideoMediaController.this.mCurrentTime != null) {
                        MyVideoMediaController.this.mCurrentTime.setText(MyVideoMediaController.this.stringForTime(this.newPosition));
                    }
                }
                MyVideoMediaController.this.mDragging = false;
                MyVideoMediaController.this.setProgress();
                MyVideoMediaController.this.updatePausePlay();
                MyVideoMediaController.this.show(3000);
                MyVideoMediaController.this.mShowing = true;
                MyVideoMediaController.this.mHandler.sendEmptyMessage(2);
            }
        };
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.my_video_view_player_controller, this);
        viewInflate.setOnTouchListener(this.mTouchListener);
        initControllerView(viewInflate);
    }

    private void initControllerView(View view) {
        this.mTitleLayout = view.findViewById(R.id.title_part);
        this.mControlLayout = view.findViewById(R.id.control_layout);
        this.loadingLayout = (ViewGroup) view.findViewById(R.id.loading_layout);
        this.errorLayout = (ViewGroup) view.findViewById(R.id.error_layout);
        this.mTurnButton = (ImageButton) view.findViewById(R.id.turn_button);
        this.mScaleButton = (ImageButton) view.findViewById(R.id.scale_button);
        this.mCenterPlayButton = view.findViewById(R.id.center_play_btn);
        this.mBackButton = view.findViewById(R.id.back_btn);
        ImageButton imageButton = this.mTurnButton;
        if (imageButton != null) {
            imageButton.requestFocus();
            this.mTurnButton.setOnClickListener(this.mPauseListener);
        }
        if (this.mScalable) {
            ImageButton imageButton2 = this.mScaleButton;
            if (imageButton2 != null) {
                imageButton2.setVisibility(0);
                this.mScaleButton.setOnClickListener(this.mScaleListener);
            }
        } else {
            ImageButton imageButton3 = this.mScaleButton;
            if (imageButton3 != null) {
                imageButton3.setVisibility(8);
            }
        }
        View view2 = this.mCenterPlayButton;
        if (view2 != null) {
            view2.setOnClickListener(this.mCenterPlayListener);
        }
        View view3 = this.mBackButton;
        if (view3 != null) {
            view3.setOnClickListener(this.mBackListener);
        }
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.seekbar);
        this.mProgress = progressBar;
        if (progressBar != null) {
            if (progressBar instanceof SeekBar) {
                ((SeekBar) progressBar).setOnSeekBarChangeListener(this.mSeekListener);
            }
            this.mProgress.setMax(1000);
        }
        this.mEndTime = (TextView) view.findViewById(R.id.duration);
        this.mCurrentTime = (TextView) view.findViewById(R.id.has_played);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mFormatBuilder = new StringBuilder();
        this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
    }

    public void setMediaPlayer(MediaPlayerControl mediaPlayerControl) {
        this.mPlayer = mediaPlayerControl;
        updatePausePlay();
    }

    public void setProgressBarEnabled(boolean z) {
        this.mProgressBarEnabled = z;
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            progressBar.setVisibility(z ? 0 : 4);
        }
    }

    public void show() {
        show(3000);
    }

    private void disableUnsupportedButtons() {
        MediaPlayerControl mediaPlayerControl;
        try {
            if (this.mTurnButton == null || (mediaPlayerControl = this.mPlayer) == null || mediaPlayerControl.canPause()) {
                return;
            }
            this.mTurnButton.setEnabled(false);
        } catch (IncompatibleClassChangeError unused) {
        }
    }

    public void show(int i) {
        if (!this.mShowing) {
            setProgress();
            ImageButton imageButton = this.mTurnButton;
            if (imageButton != null) {
                imageButton.requestFocus();
            }
            disableUnsupportedButtons();
            this.mShowing = true;
        }
        updatePausePlay();
        updateBackButton();
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        if (this.mTitleLayout.getVisibility() != 0) {
            this.mTitleLayout.setVisibility(0);
        }
        if (this.mControlLayout.getVisibility() != 0) {
            this.mControlLayout.setVisibility(0);
        }
        this.mHandler.sendEmptyMessage(2);
        Message messageObtainMessage = this.mHandler.obtainMessage(1);
        if (i != 0) {
            this.mHandler.removeMessages(1);
            this.mHandler.sendMessageDelayed(messageObtainMessage, i);
        }
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    public void hide() {
        if (this.mShowing) {
            this.mHandler.removeMessages(2);
            this.mTitleLayout.setVisibility(8);
            this.mControlLayout.setVisibility(8);
            this.mShowing = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCenterView(int i) {
        if (i == R.id.loading_layout) {
            if (this.loadingLayout.getVisibility() != 0) {
                this.loadingLayout.setVisibility(0);
            }
            if (this.mCenterPlayButton.getVisibility() == 0) {
                this.mCenterPlayButton.setVisibility(8);
            }
            if (this.errorLayout.getVisibility() == 0) {
                this.errorLayout.setVisibility(8);
                return;
            }
            return;
        }
        if (i == R.id.center_play_btn) {
            if (this.mCenterPlayButton.getVisibility() != 0) {
                this.mCenterPlayButton.setVisibility(0);
            }
            if (this.loadingLayout.getVisibility() == 0) {
                this.loadingLayout.setVisibility(8);
            }
            if (this.errorLayout.getVisibility() == 0) {
                this.errorLayout.setVisibility(8);
                return;
            }
            return;
        }
        if (i == R.id.error_layout) {
            if (this.errorLayout.getVisibility() != 0) {
                this.errorLayout.setVisibility(0);
            }
            if (this.mCenterPlayButton.getVisibility() == 0) {
                this.mCenterPlayButton.setVisibility(8);
            }
            if (this.loadingLayout.getVisibility() == 0) {
                this.loadingLayout.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideCenterView() {
        if (this.mCenterPlayButton.getVisibility() == 0) {
            this.mCenterPlayButton.setVisibility(8);
        }
        if (this.errorLayout.getVisibility() == 0) {
            this.errorLayout.setVisibility(8);
        }
        if (this.loadingLayout.getVisibility() == 0) {
            this.loadingLayout.setVisibility(8);
        }
    }

    public void reset() {
        this.mCurrentTime.setText("00:00");
        this.mEndTime.setText("00:00");
        this.mProgress.setProgress(0);
        this.mTurnButton.setImageResource(R.drawable.my_video_view_player_btn);
        setVisibility(0);
        hideLoading();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String stringForTime(int i) {
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / DateTimeConstants.SECONDS_PER_HOUR;
        this.mFormatBuilder.setLength(0);
        return i5 > 0 ? this.mFormatter.format("%d:%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)).toString() : this.mFormatter.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setProgress() {
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl == null || this.mDragging) {
            return 0;
        }
        int currentPosition = mediaPlayerControl.getCurrentPosition();
        int duration = this.mPlayer.getDuration();
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            if (duration > 0) {
                progressBar.setProgress((int) ((currentPosition * 1000) / duration));
            }
            this.mProgress.setSecondaryProgress(this.mPlayer.getBufferPercentage() * 10);
        }
        TextView textView = this.mEndTime;
        if (textView != null) {
            textView.setText(stringForTime(duration));
        }
        TextView textView2 = this.mCurrentTime;
        if (textView2 != null) {
            textView2.setText(stringForTime(currentPosition));
        }
        return currentPosition;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            show(0);
            this.handled = false;
        } else if (action != 1) {
            if (action == 3) {
                hide();
            }
        } else if (!this.handled) {
            this.handled = false;
            show(3000);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        show(3000);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
            if (z) {
                doPauseResume();
                show(3000);
                ImageButton imageButton = this.mTurnButton;
                if (imageButton != null) {
                    imageButton.requestFocus();
                }
            }
            return true;
        }
        if (keyCode == 126) {
            if (z && !this.mPlayer.isPlaying()) {
                this.mPlayer.start();
                updatePausePlay();
                show(3000);
            }
            return true;
        }
        if (keyCode == 86 || keyCode == 127) {
            if (z && this.mPlayer.isPlaying()) {
                this.mPlayer.pause();
                updatePausePlay();
                show(3000);
            }
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyCode != 4 && keyCode != 82) {
            show(3000);
            return super.dispatchKeyEvent(keyEvent);
        }
        if (z) {
            hide();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePausePlay() {
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl != null && mediaPlayerControl.isPlaying()) {
            this.mTurnButton.setImageResource(R.drawable.my_video_view_stop_btn);
        } else {
            this.mTurnButton.setImageResource(R.drawable.my_video_view_player_btn);
        }
    }

    void updateScaleButton() {
        if (this.mIsFullScreen) {
            this.mScaleButton.setImageResource(R.drawable.ic_fullscreen_exit);
        } else {
            this.mScaleButton.setImageResource(R.drawable.ic_fullscreen_enter);
        }
    }

    void toggleButtons(boolean z) {
        this.mIsFullScreen = z;
        updateScaleButton();
        updateBackButton();
    }

    void updateBackButton() {
        this.mBackButton.setVisibility(this.mIsFullScreen ? 0 : 4);
    }

    boolean isFullScreen() {
        return this.mIsFullScreen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doPauseResume() {
        if (this.mPlayer.isPlaying()) {
            this.mPlayer.pause();
        } else {
            this.mPlayer.start();
        }
        updatePausePlay();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        ImageButton imageButton = this.mTurnButton;
        if (imageButton != null) {
            imageButton.setEnabled(z);
        }
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            progressBar.setEnabled(z);
        }
        if (this.mScalable) {
            this.mScaleButton.setEnabled(z);
        }
        this.mBackButton.setEnabled(true);
    }

    public void showLoading() {
        this.mHandler.sendEmptyMessage(3);
    }

    public void hideLoading() {
        this.mHandler.sendEmptyMessage(4);
    }

    public void showError() {
        this.mHandler.sendEmptyMessage(5);
    }

    public void hideError() {
        this.mHandler.sendEmptyMessage(6);
    }

    public void showComplete() {
        this.mHandler.sendEmptyMessage(7);
    }

    public void hideComplete() {
        this.mHandler.sendEmptyMessage(8);
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
    }

    public void setOnErrorView(int i) {
        this.errorLayout.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, this.errorLayout, true);
    }

    public void setOnErrorView(View view) {
        this.errorLayout.removeAllViews();
        this.errorLayout.addView(view);
    }

    public void setOnLoadingView(int i) {
        this.loadingLayout.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, this.loadingLayout, true);
    }

    public void setOnLoadingView(View view) {
        this.loadingLayout.removeAllViews();
        this.loadingLayout.addView(view);
    }

    public void setOnErrorViewClick(View.OnClickListener onClickListener) {
        this.errorLayout.setOnClickListener(onClickListener);
    }
}
