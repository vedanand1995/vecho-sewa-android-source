.class public Lcom/argusoft/sewa/android/app/lms/MyVideoView;
.super Landroid/view/SurfaceView;
.source "MyVideoView.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;
.implements Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MyVideoView"


# instance fields
.field private mAudioSession:I

.field private mAutoRotation:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFitXY:Z

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOrientationDetector:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

.field private mPreparedBeforeStart:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoViewLayoutHeight:I

.field private mVideoViewLayoutWidth:I

.field private mVideoWidth:I

.field private videoViewCallback:Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 47
    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 48
    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 52
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mFitXY:Z

    .line 71
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAutoRotation:Z

    .line 72
    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutWidth:I

    .line 73
    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutHeight:I

    .line 336
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 349
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 403
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 420
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 453
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 503
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$6;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 552
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mContext:Landroid/content/Context;

    .line 89
    sget-object v0, Lcom/argusoft/sewa/android/app/R$styleable;->MyVideoView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    sget p2, Lcom/argusoft/sewa/android/app/R$styleable;->MyVideoView_my_video_fitXY:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mFitXY:Z

    .line 91
    sget p2, Lcom/argusoft/sewa/android/app/R$styleable;->MyVideoView_my_video_autoRotation:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAutoRotation:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1102(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1202(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1302(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->videoViewCallback:Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1902(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->enableOrientationDetect()V

    return-void
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->disableOrientationDetect()V

    return-void
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mPreparedBeforeStart:Z

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private attachMediaController()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setMediaPlayer(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    :cond_0
    return-void
.end method

.method private disableOrientationDetect()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOrientationDetector:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->disable()V

    :cond_0
    return-void
.end method

.method private enableOrientationDetect()V
    .locals 2

    .line 583
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAutoRotation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOrientationDetector:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOrientationDetector:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    .line 585
    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->setOrientationChangeListener(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;)V

    .line 586
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOrientationDetector:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->enable()V

    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 3

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    .line 193
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    .line 194
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 195
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFocusable(Z)V

    .line 197
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFocusableInTouchMode(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->requestFocus()Z

    .line 199
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 200
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onMeasureFitXY(II)V
    .locals 1

    .line 107
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDefaultSize(II)I

    move-result p1

    .line 108
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDefaultSize(II)I

    move-result p2

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method private onMeasureKeepAspectRatio(II)V
    .locals 5

    .line 116
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDefaultSize(II)I

    move-result v0

    .line 117
    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDefaultSize(II)I

    move-result v1

    .line 118
    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    if-lez v2, :cond_8

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 122
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 123
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 131
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    .line 133
    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int v2, v2, p1

    .line 136
    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 141
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    .line 149
    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    .line 156
    :cond_6
    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoWidth:I

    .line 157
    iget v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    .line 161
    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int v4, v4, p1

    .line 166
    div-int v1, v4, v2

    goto :goto_0

    .line 172
    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method private openVideo()V
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 281
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->release(Z)V

    .line 287
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 289
    iget v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAudioSession:I

    if-eqz v4, :cond_1

    .line 290
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAudioSession:I

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 295
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 296
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 297
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 298
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 299
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 300
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentBufferPercentage:I

    .line 301
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 302
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 303
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 304
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 305
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 310
    iput v3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 311
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to open content: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MyVideoView"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    .line 314
    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 315
    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    .line 316
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v3, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private release(Z)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 603
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 604
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 606
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisibility()V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    goto :goto_0

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public closePlayer()V
    .locals 1

    const/4 v0, 0x1

    .line 777
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->release(Z)V

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 748
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 724
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 715
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 742
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    const-class v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 184
    const-class v0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 636
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    if-eqz v0, :cond_9

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_3

    .line 648
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 649
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    .line 650
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0x56

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 661
    :cond_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->toggleMediaControlsVisibility()V

    goto :goto_4

    .line 655
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 656
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 657
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show()V

    :cond_6
    return v1

    .line 639
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 640
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 641
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show()V

    goto :goto_3

    .line 643
    :cond_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    .line 644
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    :goto_3
    return v1

    .line 665
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 99
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mFitXY:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->onMeasureFitXY(II)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->onMeasureKeepAspectRatio(II)V

    :goto_0
    return-void
.end method

.method public onOrientationChanged(ILcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)V
    .locals 2

    .line 205
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAutoRotation:Z

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    .line 210
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(ZI)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x7

    .line 212
    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(ZI)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    if-ne p2, p1, :cond_3

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(ZI)V

    goto :goto_0

    .line 215
    :cond_3
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    if-ne p2, p1, :cond_4

    const/16 p1, 0x8

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(ZI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 613
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    if-eqz p1, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->toggleMediaControlsVisibility()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    if-eqz p1, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->toggleMediaControlsVisibility()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 3

    .line 695
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 697
    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->videoViewCallback:Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    if-eqz v0, :cond_0

    .line 699
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;->onPause(Landroid/media/MediaPlayer;)V

    .line 702
    :cond_0
    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    .line 188
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDefaultSize(II)I

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 0

    .line 710
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 732
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 734
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 736
    :cond_0
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mAutoRotation:Z

    return-void
.end method

.method public setFitXY(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mFitXY:Z

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 784
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(ZI)V

    return-void
.end method

.method public setFullscreen(ZI)V
    .locals 4

    .line 789
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x400

    if-eqz p1, :cond_1

    .line 792
    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutWidth:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutHeight:I

    if-nez v2, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 794
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutWidth:I

    .line 795
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutHeight:I

    .line 797
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 800
    iget v3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 801
    iget v3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mVideoViewLayoutHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 802
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 807
    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 808
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->toggleButtons(Z)V

    .line 809
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->videoViewCallback:Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    if-eqz p2, :cond_2

    .line 810
    invoke-interface {p2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;->onScaleChange(Z)V

    :cond_2
    return-void
.end method

.method public setMediaController(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    .line 325
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mSeekWhenPrepared:I

    .line 259
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->openVideo()V

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->requestLayout()V

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->invalidate()V

    return-void
.end method

.method public setVideoViewCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->videoViewCallback:Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    return-void
.end method

.method public start()V
    .locals 3

    .line 679
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mPreparedBeforeStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaController:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->showLoading()V

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 685
    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 686
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->videoViewCallback:Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    if-eqz v0, :cond_1

    .line 687
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;->onStart(Landroid/media/MediaPlayer;)V

    .line 690
    :cond_1
    iput v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mCurrentState:I

    .line 271
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 706
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->release(Z)V

    return-void
.end method
