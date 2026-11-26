.class public Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsCourseDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LmsCourseDetailActivity"


# instance fields
.field private audioMediaPlayer:Landroid/media/MediaPlayer;

.field private bookmarksFragment:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

.field private bookmarksListLayout:Landroid/widget/LinearLayout;

.field private caseStudyTimerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private courseId:Ljava/lang/Integer;

.field private currentPosition:I

.field private feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private fileName:Ljava/lang/String;

.field private isAudioRecording:Z

.field private isFullScreen:Z

.field private isRightLayoutShown:Z

.field private lessonLayout:Landroid/widget/FrameLayout;

.field lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private final mContext:Landroid/content/Context;

.field private myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

.field private positionForTranscript:I

.field private recorder:Landroid/media/MediaRecorder;

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

.field private sessionStartDate:Ljava/util/Date;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private videoRightButton:Landroid/widget/ImageButton;

.field private videoRightLayout:Landroid/widget/LinearLayout;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isRightLayoutShown:Z

    .line 114
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isFullScreen:Z

    .line 116
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->fileName:Ljava/lang/String;

    .line 122
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isAudioRecording:Z

    .line 123
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->recorder:Landroid/media/MediaRecorder;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->caseStudyTimerList:Ljava/util/List;

    .line 130
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->positionForTranscript:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isRightLayoutShown:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isRightLayoutShown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->showPopUpWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksListLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->generateBookmarkList(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isAudioRecording:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isAudioRecording:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/media/MediaRecorder;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->recorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->recorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lessonLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/lang/Integer;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setRightLayoutInVideo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksFragment:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/util/Date;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isFullScreen:Z

    return p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isFullScreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->askForFeedback()V

    return-void
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->positionForTranscript:I

    return p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object p0
.end method

.method private addAudioLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 8

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 734
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    .line 735
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;ZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/Integer;)V

    .line 736
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->lms_my_courses:I

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->setBackgroundResource(I)V

    .line 738
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lessonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 739
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    return-void
.end method

.method private addImageLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 2

    .line 744
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 745
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string p1, "fileName"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string p1, "fromLms"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "courseId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 749
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lesson"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3f8

    .line 750
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private addPdfLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 3

    .line 754
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 755
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string p1, "fileName"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string p1, "fromLms"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "courseId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 759
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lesson"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3f8

    .line 760
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private addVideoLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 5

    .line 405
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->videoFileIsCorrupted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-string v0, "Some error occurred. Please refresh and try again."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V

    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->lms_universal_video_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 413
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->videoView:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    .line 415
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->media_controller:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    .line 416
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->right_menu:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightButton:Landroid/widget/ImageButton;

    .line 417
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->right_menu_layout:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightLayout:Landroid/widget/LinearLayout;

    .line 419
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setMediaController(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    .line 420
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isBaselineCourse(Ljava/lang/Integer;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setProgressBarEnabled(Z)V

    .line 422
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lessonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 424
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setRightLayoutInVideo()V

    .line 425
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    new-instance v3, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 436
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setVideoCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    .line 437
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setTitle(Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 439
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLastPausedOn(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    .line 440
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    .line 442
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setCaseStudyQuizInVideo()V

    .line 444
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    .line 445
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 446
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    new-instance p2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-string p2, "File not found. Please refresh and try again."

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private askForFeedback()V
    .locals 4

    .line 509
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getUserFeedbackRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCompleted()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-direct {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    .line 515
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->show()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private generateBookmarkList(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 6

    .line 555
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveBookmarks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 556
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$5;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/util/List;)V

    .line 567
    new-instance v1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    .line 569
    new-instance p1, Lcom/argusoft/sewa/android/app/component/PagingListView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/argusoft/sewa/android/app/component/PagingListView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 570
    invoke-virtual {p1, v2, v3, v2, v3}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setPadding(IIII)V

    const/4 v2, 0x1

    .line 571
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setChoiceMode(I)V

    .line 572
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setNestedScrollingEnabled(Z)V

    .line 574
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 575
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method private initView()V
    .locals 1

    .line 247
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 248
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 249
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->fetchSelectedCourse()V

    return-void
.end method

.method private isBaselineCourse(Ljava/lang/Integer;)Z
    .locals 4

    .line 786
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getBaselineModuleCourseIds()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$10;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$10;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 791
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private setBookMarkButton()Landroid/widget/LinearLayout;
    .locals 5

    .line 581
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    const/4 v3, 0x0

    .line 582
    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 584
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 585
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-string v4, "Add Bookmark"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 587
    new-instance v2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private setCaseStudyQuizInVideo()V
    .locals 9

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->caseStudyTimerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->caseStudyTimerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    .line 469
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 471
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->caseStudyTimerList:Ljava/util/List;

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 475
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuizAtSecond()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 476
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 477
    new-instance v4, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/util/Timer;)V

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 501
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->caseStudyTimerList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setRightLayoutInVideo()V
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_left:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isRightLayoutShown:Z

    .line 522
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksListLayout:Landroid/widget/LinearLayout;

    .line 546
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-string v4, "Please select a bookmark"

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksListLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->generateBookmarkList(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 550
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksListLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v4, v3, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->videoRightLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setBookMarkButton()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v4, v3, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVideoCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 1

    .line 668
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setVideoViewCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;)V

    return-void
.end method

.method private setupTabIcons()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_contents:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_info:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_bookmarks:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_2
    return-void
.end method

.method private setupViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    .line 295
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 296
    invoke-static {}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->newInstance()Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    move-result-object v1

    .line 297
    invoke-static {}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->newInstance()Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;

    move-result-object v2

    .line 298
    invoke-static {}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->newInstance()Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksFragment:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    .line 299
    const-string v3, "Contents"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->addFrag(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 300
    const-string v1, "Overview"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->addFrag(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->bookmarksFragment:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    const-string v2, "Bookmarks"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->addFrag(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method private showPopUpWindow(Landroid/view/View;)V
    .locals 5

    .line 600
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 601
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 603
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->text_popup_window:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 604
    new-instance v2, Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/16 v0, 0x11

    const/4 v3, 0x0

    .line 605
    invoke-virtual {v2, p1, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 607
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->popup_button:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 608
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->popup_note:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 610
    new-instance v3, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$7;

    invoke-direct {v3, p0, v0, v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$7;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->mic_button:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 631
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$8;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public addLessonView()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lessonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "File not found. Please refresh and try again."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "AUDIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "PDF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 389
    :pswitch_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addVideoLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto :goto_1

    .line 395
    :pswitch_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addImageLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto :goto_1

    .line 392
    :pswitch_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addAudioLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto :goto_1

    .line 398
    :pswitch_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addPdfLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x134d2 -> :sswitch_3
        0x3bba3b6 -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMainLayout()V
    .locals 3

    .line 270
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lesson_view:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lessonLayout:Landroid/widget/FrameLayout;

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lessonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lms_view_pager:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 283
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lms_tabs:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 285
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setupViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 291
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setupTabIcons()V

    return-void
.end method

.method public fetchSelectedCourse()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markCourseDataViewed(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    .line 255
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setBodyDetail()V

    return-void
.end method

.method public getBookmarks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveBookmarks(Ljava/lang/Integer;)Ljava/util/List;

    .line 376
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataFromBundle()V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    const-string v1, "courseId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public getSelectedCourse()Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object v0
.end method

.method public getSelectedLesson()Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object v0
.end method

.method public getSelectedModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    return-object v0
.end method

.method public getVideoView()Lcom/argusoft/sewa/android/app/lms/MyVideoView;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 765
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3f8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 767
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    goto :goto_0

    :cond_0
    const/16 p2, 0x3fa

    if-ne p1, p2, :cond_1

    .line 768
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result p2

    if-nez p2, :cond_1

    .line 769
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    iget p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->positionForTranscript:I

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    .line 770
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x3fb

    if-ne p1, p2, :cond_2

    .line 771
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 772
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    iget p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->positionForTranscript:I

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 11

    .line 351
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->isFullScreen:Z

    const-string v1, "VIDEO"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(Z)V

    goto/16 :goto_0

    .line 354
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    if-eqz v0, :cond_2

    .line 357
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 358
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 359
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    if-eqz v0, :cond_2

    .line 363
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 365
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 217
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_lms_course_detail:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setContentView(I)V

    .line 218
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getDataFromBundle()V

    .line 219
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->onBackPressed()V

    return v2

    .line 327
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 328
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    if-eqz p1, :cond_2

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDuration()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 331
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 332
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v9

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v6 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    if-eqz p1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 337
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 338
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v9

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v6 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 341
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->navigateToHomeScreen(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->finish()V

    return v2

    :cond_3
    return v1
.end method

.method protected onPause()V
    .locals 2

    .line 778
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 779
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    .line 781
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 225
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->finish()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->positionForTranscript:I

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public pauseMediaPlayerAndGetPosition()Ljava/lang/Integer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setBodyDetail()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "Some error occurred. Please try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->finish()V

    return-void

    .line 265
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addMainLayout()V

    return-void
.end method

.method public setPositionForTranscript(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->positionForTranscript:I

    return-void
.end method

.method public setSelectedLesson(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 11

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    if-eqz v0, :cond_2

    .line 156
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 158
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 163
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->currentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 165
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 168
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addLessonView()V

    .line 170
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startNextLessonDownload()V

    :cond_3
    return-void
.end method

.method public setSelectedModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    return-void
.end method

.method public startFileDownloadForLesson(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->startFileDownloading(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startNextLessonDownload()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 179
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startFileDownloadForLesson(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    :cond_2
    return-void
.end method
