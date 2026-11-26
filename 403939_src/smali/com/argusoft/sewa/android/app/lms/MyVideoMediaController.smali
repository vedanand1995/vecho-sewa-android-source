.class public Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;
.super Landroid/widget/FrameLayout;
.source "MyVideoMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final HIDE_COMPLETE:I = 0x8

.field private static final HIDE_ERROR:I = 0x6

.field private static final HIDE_LOADING:I = 0x4

.field private static final SHOW_COMPLETE:I = 0x7

.field private static final SHOW_ERROR:I = 0x5

.field private static final SHOW_LOADING:I = 0x3

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final STATE_COMPLETE:I = 0x5

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_LOADING:I = 0x3

.field private static final STATE_PAUSE:I = 0x2

.field private static final STATE_PLAYING:I = 0x1

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private errorLayout:Landroid/view/ViewGroup;

.field handled:Z

.field private loadingLayout:Landroid/view/ViewGroup;

.field private mBackButton:Landroid/view/View;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mCenterPlayButton:Landroid/view/View;

.field private mCenterPlayListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mControlLayout:Landroid/view/View;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFullScreen:Z

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressBarEnabled:Z

.field private mScalable:Z

.field private mScaleButton:Landroid/widget/ImageButton;

.field private mScaleListener:Landroid/view/View$OnClickListener;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mState:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/view/View;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTurnButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScalable:Z

    .line 42
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    const/4 v2, 0x3

    .line 54
    iput v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mState:I

    .line 77
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgressBarEnabled:Z

    .line 247
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    .line 402
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->handled:Z

    .line 403
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 470
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 479
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleListener:Landroid/view/View$OnClickListener;

    .line 488
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackListener:Landroid/view/View$OnClickListener;

    .line 500
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$6;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayListener:Landroid/view/View$OnClickListener;

    .line 549
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 90
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScalable:Z

    .line 42
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    const/4 v2, 0x3

    .line 54
    iput v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mState:I

    .line 77
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgressBarEnabled:Z

    .line 247
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    .line 402
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->handled:Z

    .line 403
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 470
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 479
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleListener:Landroid/view/View$OnClickListener;

    .line 488
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackListener:Landroid/view/View$OnClickListener;

    .line 500
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$6;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayListener:Landroid/view/View$OnClickListener;

    .line 549
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mContext:Landroid/content/Context;

    .line 82
    sget-object v0, Lcom/argusoft/sewa/android/app/R$styleable;->MyVideoMediaController:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    sget v0, Lcom/argusoft/sewa/android/app/R$styleable;->MyVideoMediaController_my_video_scalable:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScalable:Z

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)I
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mDragging:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;I)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->showCenterView(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hideCenterView()V

    return-void
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    return p0
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->pause()V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->start()V

    .line 545
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updatePausePlay()V

    return-void
.end method

.method private hideCenterView()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mContext:Landroid/content/Context;

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 96
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->my_video_view_player_controller:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->initControllerView(Landroid/view/View;)V

    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 2

    .line 103
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->title_part:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTitleLayout:Landroid/view/View;

    .line 104
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->control_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mControlLayout:Landroid/view/View;

    .line 105
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->loading_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    .line 106
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->error_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    .line 107
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->turn_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    .line 108
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->scale_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    .line 109
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->center_play_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    .line 110
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->back_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackButton:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScalable:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 128
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 129
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 133
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_4
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    .line 139
    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 140
    check-cast v0, Landroid/widget/SeekBar;

    .line 141
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 146
    :cond_6
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mEndTime:Landroid/widget/TextView;

    .line 147
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->has_played:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 148
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTitle:Landroid/widget/TextView;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 150
    new-instance p1, Ljava/util/Formatter;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mDragging:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 362
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2

    if-lez v1, :cond_1

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long v5, v5, v3

    int-to-long v3, v1

    .line 365
    div-long/2addr v5, v3

    long-to-int v3, v5

    .line 366
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v2

    .line 369
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 373
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 375
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private showCenterView(I)V
    .locals 3

    .line 284
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->loading_layout:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_2
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->center_play_btn:I

    if-ne p1, v0, :cond_5

    .line 295
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 296
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 299
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 302
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_5
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->error_layout:I

    if-ne p1, v0, :cond_8

    .line 306
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 307
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 309
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 310
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCenterPlayButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 313
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 7

    .line 342
    div-int/lit16 p1, p1, 0x3e8

    .line 344
    rem-int/lit8 v0, p1, 0x3c

    .line 345
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 346
    div-int/lit16 p1, p1, 0xe10

    .line 348
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-lez p1, :cond_0

    .line 350
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mFormatter:Ljava/util/Formatter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v1, v6, v2

    aput-object v0, v6, v4

    const-string p1, "%d:%02d:%02d"

    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mFormatter:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {p1, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updatePausePlay()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->my_video_view_stop_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->my_video_view_player_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 424
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 425
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x4f

    const/16 v4, 0xbb8

    if-eq v0, v3, :cond_c

    const/16 v3, 0x55

    if-eq v0, v3, :cond_c

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_1

    goto :goto_4

    :cond_1
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_3

    if-eqz v1, :cond_2

    .line 439
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 440
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->start()V

    .line 441
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updatePausePlay()V

    .line 442
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    :cond_2
    return v2

    :cond_3
    const/16 v3, 0x56

    if-eq v0, v3, :cond_a

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x19

    if-eq v0, v3, :cond_9

    const/16 v3, 0x18

    if-eq v0, v3, :cond_9

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x52

    if-ne v0, v3, :cond_6

    goto :goto_1

    .line 466
    :cond_6
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    .line 467
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 461
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    :cond_8
    return v2

    .line 458
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 447
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 448
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->pause()V

    .line 449
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updatePausePlay()V

    .line 450
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    :cond_b
    return v2

    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    .line 431
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->doPauseResume()V

    .line 432
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    .line 433
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_d

    .line 434
    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_d
    return v2
.end method

.method public hide()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTitleLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mControlLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    :cond_0
    return-void
.end method

.method public hideComplete()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideError()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method isFullScreen()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    goto :goto_0

    .line 388
    :cond_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->handled:Z

    if-nez p1, :cond_3

    .line 389
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->handled:Z

    const/16 p1, 0xbb8

    .line 390
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    .line 385
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->handled:Z

    :cond_3
    :goto_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0xbb8

    .line 418
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 336
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->my_video_view_player_btn:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 337
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setVisibility(I)V

    .line 338
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hideLoading()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 609
    :cond_1
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScalable:Z

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 612
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setMediaPlayer(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mPlayer:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    .line 156
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updatePausePlay()V

    return-void
.end method

.method public setOnErrorView(I)V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 651
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setOnErrorView(Landroid/view/View;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 657
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setOnErrorViewClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->errorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLoadingView(I)V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setOnLoadingView(Landroid/view/View;)V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->loadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setProgressBarEnabled(Z)V
    .locals 1

    .line 160
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgressBarEnabled:Z

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 162
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/16 v0, 0xbb8

    .line 171
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 4

    .line 199
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setProgress()I

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTurnButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->disableUnsupportedButtons()V

    .line 205
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mShowing:Z

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updatePausePlay()V

    .line 208
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateBackButton()V

    .line 210
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setVisibility(I)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mControlLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mControlLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 227
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void
.end method

.method public showComplete()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showError()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method toggleButtons(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    .line 527
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateScaleButton()V

    .line 528
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateBackButton()V

    return-void
.end method

.method updateBackButton()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mBackButton:Landroid/view/View;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method updateScaleButton()V
    .locals 2

    .line 518
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_fullscreen_exit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->mScaleButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_fullscreen_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method
