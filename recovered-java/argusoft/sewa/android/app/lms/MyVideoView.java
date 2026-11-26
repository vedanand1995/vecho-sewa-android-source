package com.argusoft.sewa.android.app.lms;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.lms.MyVideoMediaController;
import com.argusoft.sewa.android.app.lms.MyVideoOrientationDetector;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public class MyVideoView extends SurfaceView implements MyVideoMediaController.MediaPlayerControl, MyVideoOrientationDetector.OrientationChangeListener {
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private static final String TAG = "MyVideoView";
    private int mAudioSession;
    private boolean mAutoRotation;
    private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener;
    private boolean mCanPause;
    private boolean mCanSeekBack;
    private boolean mCanSeekForward;
    private MediaPlayer.OnCompletionListener mCompletionListener;
    private Context mContext;
    private int mCurrentBufferPercentage;
    private int mCurrentState;
    private MediaPlayer.OnErrorListener mErrorListener;
    private boolean mFitXY;
    private MediaPlayer.OnInfoListener mInfoListener;
    private MyVideoMediaController mMediaController;
    private MediaPlayer mMediaPlayer;
    private MediaPlayer.OnCompletionListener mOnCompletionListener;
    private MediaPlayer.OnErrorListener mOnErrorListener;
    private MediaPlayer.OnInfoListener mOnInfoListener;
    private MediaPlayer.OnPreparedListener mOnPreparedListener;
    private MyVideoOrientationDetector mOrientationDetector;
    private boolean mPreparedBeforeStart;
    MediaPlayer.OnPreparedListener mPreparedListener;
    SurfaceHolder.Callback mSHCallback;
    private int mSeekWhenPrepared;
    MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener;
    private int mSurfaceHeight;
    private SurfaceHolder mSurfaceHolder;
    private int mSurfaceWidth;
    private int mTargetState;
    private Uri mUri;
    private int mVideoHeight;
    private int mVideoViewLayoutHeight;
    private int mVideoViewLayoutWidth;
    private int mVideoWidth;
    private VideoViewCallback videoViewCallback;

    public interface VideoViewCallback {
        void onBufferingEnd(MediaPlayer mediaPlayer);

        void onBufferingStart(MediaPlayer mediaPlayer);

        void onPause(MediaPlayer mediaPlayer);

        void onScaleChange(boolean z);

        void onStart(MediaPlayer mediaPlayer);
    }

    public MyVideoView(Context context) {
        this(context, null);
    }

    public MyVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MyVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mFitXY = false;
        this.mAutoRotation = false;
        this.mVideoViewLayoutWidth = 0;
        this.mVideoViewLayoutHeight = 0;
        this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
                MyVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                MyVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                Log.d(MyVideoView.TAG, String.format("onVideoSizeChanged width=%d,height=%d", Integer.valueOf(MyVideoView.this.mVideoWidth), Integer.valueOf(MyVideoView.this.mVideoHeight)));
                if (MyVideoView.this.mVideoWidth == 0 || MyVideoView.this.mVideoHeight == 0) {
                    return;
                }
                MyVideoView.this.getHolder().setFixedSize(MyVideoView.this.mVideoWidth, MyVideoView.this.mVideoHeight);
                MyVideoView.this.requestLayout();
            }
        };
        this.mPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
                MyVideoView.this.mCurrentState = 2;
                MyVideoView myVideoView = MyVideoView.this;
                myVideoView.mCanPause = myVideoView.mCanSeekBack = myVideoView.mCanSeekForward = true;
                MyVideoView.this.mPreparedBeforeStart = true;
                if (MyVideoView.this.mMediaController != null) {
                    MyVideoView.this.mMediaController.hideLoading();
                }
                if (MyVideoView.this.mOnPreparedListener != null) {
                    MyVideoView.this.mOnPreparedListener.onPrepared(MyVideoView.this.mMediaPlayer);
                }
                if (MyVideoView.this.mMediaController != null) {
                    MyVideoView.this.mMediaController.setEnabled(true);
                }
                MyVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                MyVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                int i2 = MyVideoView.this.mSeekWhenPrepared;
                if (i2 != 0) {
                    MyVideoView.this.seekTo(i2);
                }
                if (MyVideoView.this.mVideoWidth == 0 || MyVideoView.this.mVideoHeight == 0) {
                    if (MyVideoView.this.mTargetState == 3) {
                        MyVideoView.this.start();
                        return;
                    }
                    return;
                }
                MyVideoView.this.getHolder().setFixedSize(MyVideoView.this.mVideoWidth, MyVideoView.this.mVideoHeight);
                if (MyVideoView.this.mSurfaceWidth == MyVideoView.this.mVideoWidth && MyVideoView.this.mSurfaceHeight == MyVideoView.this.mVideoHeight) {
                    if (MyVideoView.this.mTargetState == 3) {
                        MyVideoView.this.start();
                        if (MyVideoView.this.mMediaController != null) {
                            MyVideoView.this.mMediaController.show();
                            return;
                        }
                        return;
                    }
                    if (MyVideoView.this.isPlaying()) {
                        return;
                    }
                    if ((i2 != 0 || MyVideoView.this.getCurrentPosition() > 0) && MyVideoView.this.mMediaController != null) {
                        MyVideoView.this.mMediaController.show(0);
                    }
                }
            }
        };
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                MyVideoView.this.mCurrentState = 5;
                MyVideoView.this.mTargetState = 5;
                if (MyVideoView.this.mMediaController != null) {
                    boolean zIsPlaying = MyVideoView.this.mMediaPlayer.isPlaying();
                    int i2 = MyVideoView.this.mCurrentState;
                    MyVideoView.this.mMediaController.showComplete();
                    Log.d(MyVideoView.TAG, String.format("a=%s,b=%d", Boolean.valueOf(zIsPlaying), Integer.valueOf(i2)));
                }
                if (MyVideoView.this.mOnCompletionListener != null) {
                    MyVideoView.this.mOnCompletionListener.onCompletion(MyVideoView.this.mMediaPlayer);
                }
            }
        };
        this.mInfoListener = new MediaPlayer.OnInfoListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.4
            /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0083 A[RETURN] */
            @Override // android.media.MediaPlayer.OnInfoListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onInfo(android.media.MediaPlayer r5, int r6, int r7) {
                /*
                    r4 = this;
                    r0 = 701(0x2bd, float:9.82E-43)
                    java.lang.String r1 = "MyVideoView"
                    r2 = 1
                    r3 = 0
                    if (r6 == r0) goto L3c
                    r0 = 702(0x2be, float:9.84E-43)
                    if (r6 == r0) goto Le
                    r0 = 0
                    goto L6a
                Le:
                    java.lang.String r0 = "onInfo MediaPlayer.MEDIA_INFO_BUFFERING_END"
                    android.util.Log.d(r1, r0)
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoView$VideoViewCallback r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$1500(r0)
                    if (r0 == 0) goto L2a
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoView$VideoViewCallback r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$1500(r0)
                    com.argusoft.sewa.android.app.lms.MyVideoView r1 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    android.media.MediaPlayer r1 = com.argusoft.sewa.android.app.lms.MyVideoView.access$900(r1)
                    r0.onBufferingEnd(r1)
                L2a:
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoMediaController r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$700(r0)
                    if (r0 == 0) goto L69
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoMediaController r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$700(r0)
                    r0.hideLoading()
                    goto L69
                L3c:
                    java.lang.String r0 = "onInfo MediaPlayer.MEDIA_INFO_BUFFERING_START"
                    android.util.Log.d(r1, r0)
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoView$VideoViewCallback r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$1500(r0)
                    if (r0 == 0) goto L58
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoView$VideoViewCallback r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$1500(r0)
                    com.argusoft.sewa.android.app.lms.MyVideoView r1 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    android.media.MediaPlayer r1 = com.argusoft.sewa.android.app.lms.MyVideoView.access$900(r1)
                    r0.onBufferingStart(r1)
                L58:
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoMediaController r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$700(r0)
                    if (r0 == 0) goto L69
                    com.argusoft.sewa.android.app.lms.MyVideoView r0 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    com.argusoft.sewa.android.app.lms.MyVideoMediaController r0 = com.argusoft.sewa.android.app.lms.MyVideoView.access$700(r0)
                    r0.showLoading()
                L69:
                    r0 = 1
                L6a:
                    com.argusoft.sewa.android.app.lms.MyVideoView r1 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    android.media.MediaPlayer$OnInfoListener r1 = com.argusoft.sewa.android.app.lms.MyVideoView.access$1600(r1)
                    if (r1 == 0) goto L83
                    com.argusoft.sewa.android.app.lms.MyVideoView r1 = com.argusoft.sewa.android.app.lms.MyVideoView.this
                    android.media.MediaPlayer$OnInfoListener r1 = com.argusoft.sewa.android.app.lms.MyVideoView.access$1600(r1)
                    boolean r5 = r1.onInfo(r5, r6, r7)
                    if (r5 != 0) goto L82
                    if (r0 == 0) goto L81
                    goto L82
                L81:
                    r2 = 0
                L82:
                    return r2
                L83:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.lms.MyVideoView.AnonymousClass4.onInfo(android.media.MediaPlayer, int, int):boolean");
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.5
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                Log.d(MyVideoView.TAG, "Error: " + i2 + GlobalTypes.COMMA + i3);
                MyVideoView.this.mCurrentState = -1;
                MyVideoView.this.mTargetState = -1;
                if (MyVideoView.this.mMediaController != null) {
                    MyVideoView.this.mMediaController.showError();
                }
                if (MyVideoView.this.mOnErrorListener == null) {
                    return true;
                }
                MyVideoView.this.mOnErrorListener.onError(MyVideoView.this.mMediaPlayer, i2, i3);
                return true;
            }
        };
        this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.6
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
                MyVideoView.this.mCurrentBufferPercentage = i2;
            }
        };
        this.mSHCallback = new SurfaceHolder.Callback() { // from class: com.argusoft.sewa.android.app.lms.MyVideoView.7
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) throws IllegalStateException {
                MyVideoView.this.mSurfaceWidth = i3;
                MyVideoView.this.mSurfaceHeight = i4;
                boolean z = MyVideoView.this.mTargetState == 3;
                boolean z2 = MyVideoView.this.mVideoWidth == i3 && MyVideoView.this.mVideoHeight == i4;
                if (MyVideoView.this.mMediaPlayer != null && z && z2) {
                    if (MyVideoView.this.mSeekWhenPrepared != 0) {
                        MyVideoView myVideoView = MyVideoView.this;
                        myVideoView.seekTo(myVideoView.mSeekWhenPrepared);
                    }
                    MyVideoView.this.start();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                MyVideoView.this.mSurfaceHolder = surfaceHolder;
                MyVideoView.this.openVideo();
                MyVideoView.this.enableOrientationDetect();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                MyVideoView.this.mSurfaceHolder = null;
                if (MyVideoView.this.mMediaController != null) {
                    MyVideoView.this.mMediaController.hide();
                }
                MyVideoView.this.release(true);
                MyVideoView.this.disableOrientationDetect();
            }
        };
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MyVideoView, 0, 0);
        this.mFitXY = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MyVideoView_my_video_fitXY, false);
        this.mAutoRotation = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MyVideoView_my_video_autoRotation, false);
        typedArrayObtainStyledAttributes.recycle();
        initVideoView();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mFitXY) {
            onMeasureFitXY(i, i2);
        } else {
            onMeasureKeepAspectRatio(i, i2);
        }
    }

    private void onMeasureFitXY(int i, int i2) {
        setMeasuredDimension(getDefaultSize(this.mVideoWidth, i), getDefaultSize(this.mVideoHeight, i2));
    }

    private void onMeasureKeepAspectRatio(int i, int i2) {
        int i3;
        int defaultSize = getDefaultSize(this.mVideoWidth, i);
        int defaultSize2 = getDefaultSize(this.mVideoHeight, i2);
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i4 = this.mVideoWidth;
                int i5 = i4 * size2;
                int i6 = this.mVideoHeight;
                if (i5 < size * i6) {
                    defaultSize = (i4 * size2) / i6;
                    defaultSize2 = size2;
                } else {
                    if (i4 * size2 > size * i6) {
                        defaultSize2 = (i6 * size) / i4;
                        defaultSize = size;
                    }
                    defaultSize = size;
                    defaultSize2 = size2;
                }
            } else if (mode == 1073741824) {
                int i7 = (this.mVideoHeight * size) / this.mVideoWidth;
                if (mode2 != Integer.MIN_VALUE || i7 <= size2) {
                    defaultSize2 = i7;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i3 = (this.mVideoWidth * size2) / this.mVideoHeight;
                    if (mode == Integer.MIN_VALUE && i3 > size) {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                } else {
                    int i8 = this.mVideoWidth;
                    int i9 = this.mVideoHeight;
                    if (mode2 != Integer.MIN_VALUE || i9 <= size2) {
                        i3 = i8;
                        size2 = i9;
                    } else {
                        i3 = (size2 * i8) / i9;
                    }
                    if (mode == Integer.MIN_VALUE && i3 > size) {
                        defaultSize2 = (i9 * size) / i8;
                        defaultSize = size;
                    }
                }
                defaultSize = i3;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(MyVideoView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(MyVideoView.class.getName());
    }

    public int resolveAdjustedSize(int i, int i2) {
        return getDefaultSize(i, i2);
    }

    private void initVideoView() {
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        getHolder().addCallback(this.mSHCallback);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.mCurrentState = 0;
        this.mTargetState = 0;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoOrientationDetector.OrientationChangeListener
    public void onOrientationChanged(int i, MyVideoOrientationDetector.Direction direction) {
        if (this.mAutoRotation) {
            if (direction == MyVideoOrientationDetector.Direction.PORTRAIT) {
                setFullscreen(false, 1);
                return;
            }
            if (direction == MyVideoOrientationDetector.Direction.REVERSE_PORTRAIT) {
                setFullscreen(false, 7);
            } else if (direction == MyVideoOrientationDetector.Direction.LANDSCAPE) {
                setFullscreen(true, 0);
            } else if (direction == MyVideoOrientationDetector.Direction.REVERSE_LANDSCAPE) {
                setFullscreen(true, 8);
            }
        }
    }

    public void setFitXY(boolean z) {
        this.mFitXY = z;
    }

    public void setAutoRotation(boolean z) {
        this.mAutoRotation = z;
    }

    public void setVideoPath(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        setVideoURI(uri, null);
    }

    public void setVideoURI(Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mUri = uri;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void stopPlayback() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openVideo() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        if (this.mUri == null || this.mSurfaceHolder == null) {
            return;
        }
        ((AudioManager) this.mContext.getSystemService("audio")).requestAudioFocus(null, 3, 1);
        release(false);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mMediaPlayer = mediaPlayer;
            int i = this.mAudioSession;
            if (i != 0) {
                mediaPlayer.setAudioSessionId(i);
            } else {
                this.mAudioSession = mediaPlayer.getAudioSessionId();
            }
            this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
            this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
            this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
            this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
            this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
            this.mCurrentBufferPercentage = 0;
            this.mMediaPlayer.setDataSource(this.mContext, this.mUri);
            this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setScreenOnWhilePlaying(true);
            this.mMediaPlayer.prepareAsync();
            this.mCurrentState = 1;
            attachMediaController();
        } catch (IOException e) {
            Log.w(TAG, "Unable to open content: " + this.mUri, e);
            this.mCurrentState = -1;
            this.mTargetState = -1;
            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
        }
    }

    public void setMediaController(MyVideoMediaController myVideoMediaController) {
        MyVideoMediaController myVideoMediaController2 = this.mMediaController;
        if (myVideoMediaController2 != null) {
            myVideoMediaController2.hide();
        }
        this.mMediaController = myVideoMediaController;
        attachMediaController();
    }

    private void attachMediaController() {
        MyVideoMediaController myVideoMediaController;
        if (this.mMediaPlayer == null || (myVideoMediaController = this.mMediaController) == null) {
            return;
        }
        myVideoMediaController.setMediaPlayer(this);
        this.mMediaController.setEnabled(isInPlaybackState());
        this.mMediaController.hide();
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableOrientationDetect() {
        if (this.mAutoRotation && this.mOrientationDetector == null) {
            MyVideoOrientationDetector myVideoOrientationDetector = new MyVideoOrientationDetector(this.mContext);
            this.mOrientationDetector = myVideoOrientationDetector;
            myVideoOrientationDetector.setOrientationChangeListener(this);
            this.mOrientationDetector.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableOrientationDetect() {
        MyVideoOrientationDetector myVideoOrientationDetector = this.mOrientationDetector;
        if (myVideoOrientationDetector != null) {
            myVideoOrientationDetector.disable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(boolean z) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (z) {
                this.mTargetState = 0;
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isInPlaybackState() || this.mMediaController == null) {
            return false;
        }
        toggleMediaControlsVisibility();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!isInPlaybackState() || this.mMediaController == null) {
            return false;
        }
        toggleMediaControlsVisibility();
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) throws IllegalStateException {
        boolean z = (i == 4 || i == 24 || i == 25 || i == 164 || i == 82 || i == 5 || i == 6) ? false : true;
        if (isInPlaybackState() && z && this.mMediaController != null) {
            if (i == 79 || i == 85) {
                if (this.mMediaPlayer.isPlaying()) {
                    pause();
                    this.mMediaController.show();
                } else {
                    start();
                    this.mMediaController.hide();
                }
                return true;
            }
            if (i == 126) {
                if (!this.mMediaPlayer.isPlaying()) {
                    start();
                    this.mMediaController.hide();
                }
                return true;
            }
            if (i == 86 || i == 127) {
                if (this.mMediaPlayer.isPlaying()) {
                    pause();
                    this.mMediaController.show();
                }
                return true;
            }
            toggleMediaControlsVisibility();
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void toggleMediaControlsVisibility() {
        if (this.mMediaController.isShowing()) {
            this.mMediaController.hide();
        } else {
            this.mMediaController.show();
        }
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public void start() throws IllegalStateException {
        MyVideoMediaController myVideoMediaController;
        if (!this.mPreparedBeforeStart && (myVideoMediaController = this.mMediaController) != null) {
            myVideoMediaController.showLoading();
        }
        if (isInPlaybackState()) {
            this.mMediaPlayer.start();
            this.mCurrentState = 3;
            VideoViewCallback videoViewCallback = this.videoViewCallback;
            if (videoViewCallback != null) {
                videoViewCallback.onStart(this.mMediaPlayer);
            }
        }
        this.mTargetState = 3;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public void pause() throws IllegalStateException {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            this.mCurrentState = 4;
            VideoViewCallback videoViewCallback = this.videoViewCallback;
            if (videoViewCallback != null) {
                videoViewCallback.onPause(this.mMediaPlayer);
            }
        }
        this.mTargetState = 4;
    }

    public void suspend() {
        release(false);
    }

    public void resume() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        openVideo();
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public int getDuration() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getDuration();
        }
        return -1;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public void seekTo(int i) throws IllegalStateException {
        if (isInPlaybackState()) {
            this.mMediaPlayer.seekTo(i);
            this.mSeekWhenPrepared = 0;
        } else {
            this.mSeekWhenPrepared = i;
        }
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.mMediaPlayer != null) {
            return this.mCurrentBufferPercentage;
        }
        return 0;
    }

    private boolean isInPlaybackState() {
        int i;
        return (this.mMediaPlayer == null || (i = this.mCurrentState) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public boolean canPause() {
        return this.mCanPause;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.mCanSeekBack;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.mCanSeekForward;
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public void closePlayer() {
        release(true);
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public void setFullscreen(boolean z) {
        setFullscreen(z, !z ? 1 : 0);
    }

    @Override // com.argusoft.sewa.android.app.lms.MyVideoMediaController.MediaPlayerControl
    public void setFullscreen(boolean z, int i) {
        Activity activity = (Activity) this.mContext;
        if (z) {
            if (this.mVideoViewLayoutWidth == 0 && this.mVideoViewLayoutHeight == 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                this.mVideoViewLayoutWidth = layoutParams.width;
                this.mVideoViewLayoutHeight = layoutParams.height;
            }
            activity.getWindow().addFlags(1024);
        } else {
            ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
            layoutParams2.width = this.mVideoViewLayoutWidth;
            layoutParams2.height = this.mVideoViewLayoutHeight;
            setLayoutParams(layoutParams2);
            activity.getWindow().clearFlags(1024);
        }
        activity.setRequestedOrientation(i);
        this.mMediaController.toggleButtons(z);
        VideoViewCallback videoViewCallback = this.videoViewCallback;
        if (videoViewCallback != null) {
            videoViewCallback.onScaleChange(z);
        }
    }

    public void setVideoViewCallback(VideoViewCallback videoViewCallback) {
        this.videoViewCallback = videoViewCallback;
    }
}
