.class public Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final TAG:Ljava/lang/String; = "LMSVideoPlayer"


# instance fields
.field private bookMarkButtonLayout:Landroid/widget/LinearLayout;

.field private bookmarkDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            ">;"
        }
    .end annotation
.end field

.field private courseId:Ljava/lang/Integer;

.field private currentPosition:I

.field private descView:Lcom/google/android/material/textview/MaterialTextView;

.field private feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private fileName:Ljava/lang/String;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private height:I

.field private innerLayout:Landroid/widget/LinearLayout;

.field private isAudioRecording:Z

.field private linearLayout1:Landroid/widget/LinearLayout;

.field private listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private note:Lcom/google/android/material/textfield/TextInputLayout;

.field private openAudioButton:Landroid/view/View;

.field private openImageButton:Landroid/view/View;

.field private openPdfButton:Landroid/view/View;

.field private openToggle:Z

.field private openVideoButton:Landroid/view/View;

.field private parentLayout:Landroid/widget/LinearLayout;

.field private parentLayout1:Landroid/widget/LinearLayout;

.field private recorder:Landroid/media/MediaRecorder;

.field private selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private sessionStartDate:Ljava/util/Date;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private tabBar:Landroid/view/View;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openToggle:Z

    .line 111
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookmarkDataBeans:Ljava/util/List;

    .line 113
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->isAudioRecording:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openToggle:Z

    return p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openToggle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/component/PagingListView;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->generateBookmarkList(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookMarkButtonLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookMarkButtonLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setBookMarkButton()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->tabBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setVideoLayout()V

    return-void
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->descView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->descView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openVideoButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openVideoButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openMediaByMediaType(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    return p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openPdfButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openPdfButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openImageButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openImageButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openAudioButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openAudioButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->generateTreeView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setOpenIconVisibilityByMediaType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookmarkDataBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->showPopUpWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->note:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->isAudioRecording:Z

    return p0
.end method

.method static synthetic access$3102(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->isAudioRecording:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaRecorder;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->recorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->recorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->linearLayout1:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->linearLayout1:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->width:I

    return p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->height:I

    return p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout1:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout1:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->innerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$902(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->innerLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private addCourseTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 8

    .line 574
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 576
    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Course Test"

    .line 577
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 578
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 580
    new-instance v3, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v7, 0x46

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v2

    .line 581
    invoke-virtual {p2, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 583
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$11;

    invoke-direct {v3, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addLessonTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 8

    .line 534
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 536
    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lesson Test"

    .line 537
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 538
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 540
    new-instance v3, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v7, 0x46

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v2

    .line 541
    invoke-virtual {p2, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 543
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$9;

    invoke-direct {v3, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addModuleTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 8

    .line 554
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 556
    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Module Test"

    .line 557
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 558
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 560
    new-instance v3, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v7, 0x46

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v2

    .line 561
    invoke-virtual {p2, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 563
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;

    invoke-direct {v3, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private askForFeedback()V
    .locals 4

    .line 975
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getUserFeedbackRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 977
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

    .line 981
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-direct {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    .line 982
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->show()V

    goto :goto_1

    .line 978
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->finish()V

    return-void

    .line 984
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->finish()V

    :goto_1
    return-void
.end method

.method private createTabBar()Landroid/view/View;
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->bookmark_tabs:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bookmark_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 250
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->interaction_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createToggle()Landroid/view/View;
    .locals 4

    .line 195
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 197
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x46

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/16 v3, 0x1e

    .line 198
    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v2, 0x800015

    .line 199
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 200
    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openToggle:Z

    if-eqz v2, :cond_0

    .line 201
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 203
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_left:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->createTabBar()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->tabBar:Landroid/view/View;

    .line 207
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private generateBookmarkList(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 8

    .line 631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveBookmarks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookmarkDataBeans:Ljava/util/List;

    .line 632
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookmarkDataBeans:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->bookmarkDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    .line 635
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>()V

    .line 636
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setPosition(I)V

    .line 637
    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setCrossRefBookmark(Z)V

    .line 640
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 641
    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setAudio(Z)V

    .line 642
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBookmarkNote(Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_0
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBookmarkText(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 646
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setAudio(Z)V

    .line 647
    const-string v4, "Play"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBookmarkNote(Ljava/lang/String;)V

    .line 649
    :goto_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 652
    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 653
    aget-object v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 655
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBookmarkText(Ljava/lang/String;)V

    .line 657
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    :cond_3
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V

    .line 683
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_bookmark:I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/16 v0, 0xa

    .line 685
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setPadding(IIII)V

    .line 686
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    return-object p1
.end method

.method private generateTreeView()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    .line 342
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 344
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-string v3, "No Lessons to show"

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/16 v3, 0x14

    .line 345
    invoke-virtual {v1, v3, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    return-object v1

    .line 350
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->root()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v3

    .line 351
    new-instance v4, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    .line 354
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->descView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    new-instance v5, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 356
    new-instance v6, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v6, v5}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8, v2, v2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v6, v5}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v5

    .line 357
    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 358
    invoke-virtual {v5, v8}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 360
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;

    invoke-direct {v3, v0, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 372
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v3

    .line 373
    sget-object v6, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 375
    new-instance v7, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10, v2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 376
    new-instance v9, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v9, v7}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v12, 0x32

    invoke-direct {v7, v10, v8, v11, v12}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v9, v7}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v7

    .line 377
    new-array v9, v8, [Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    aput-object v7, v9, v2

    invoke-virtual {v5, v9}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChildren([Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 379
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$5;

    invoke-direct {v9, v0, v6}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V

    invoke-virtual {v7, v9}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 391
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v9

    .line 392
    sget-object v10, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_MEDIA_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v10

    .line 394
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 395
    new-instance v12, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    invoke-direct {v0, v11}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getIconFromMediaType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)I

    move-result v13

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-direct {v12, v13, v14, v15}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 396
    new-instance v13, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v13, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v8, 0x46

    invoke-direct {v12, v14, v2, v15, v8}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v13, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v8

    .line 397
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;

    invoke-direct {v12, v0, v11}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    invoke-virtual {v8, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 405
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;

    invoke-direct {v12, v0, v11}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    invoke-virtual {v8, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setLongClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 416
    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 417
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    .line 418
    invoke-virtual {v7, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 419
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v7, v14}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v8, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setSelected(Z)V

    goto :goto_2

    :cond_1
    const/4 v12, 0x1

    .line 424
    :goto_2
    invoke-direct {v0, v11, v7}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->addLessonTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    .line 428
    invoke-direct {v0, v6, v7}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->addModuleTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 432
    :cond_3
    invoke-direct {v0, v1, v5}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->addCourseTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    .line 433
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getDataFromBundle()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    const-string v1, "courseId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    .line 164
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "lesson"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setDataSourcesForVideo(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    :cond_0
    return-void
.end method

.method private getIconFromMediaType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)I
    .locals 2

    .line 437
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "IMAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 447
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    return p1

    .line 439
    :pswitch_0
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->play_video:I

    return p1

    .line 443
    :pswitch_1
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->image:I

    return p1

    .line 445
    :pswitch_2
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    return p1

    .line 441
    :pswitch_3
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->pdf:I

    return p1

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

.method private openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 598
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 599
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 600
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 607
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 608
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 614
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    .line 618
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 619
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 621
    :cond_7
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "questionSet"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string p2, "testFor"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3f8

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 626
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private openMediaByMediaType(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 10

    .line 478
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getAllowedMediaMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "VIDEO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "IMAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "PDF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 491
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 492
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 493
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 494
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 495
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 496
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setDataSourcesForVideo(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto/16 :goto_1

    .line 508
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity_;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    const-string p2, "path"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fileName"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string p2, "fromLms"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    const-string p2, "courseId"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 513
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "lesson"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3f9

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 517
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 518
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 519
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    const/4 v4, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;ZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/Integer;)V

    .line 520
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->show()V

    .line 521
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$8;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 499
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 500
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 501
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 500
    invoke-virtual {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->startPDFViewerActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 503
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 504
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 503
    invoke-virtual {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->startPDFViewerActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

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

.method private playVideoSequentially()Z
    .locals 5

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLastPausedOn(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 776
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "LMSVideoPlayer"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is found and ready to play"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 780
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 782
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 783
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 784
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 785
    :cond_0
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    if-lez v1, :cond_1

    .line 786
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    .line 790
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 792
    const-string v1, "Video file is corrupted. do login again"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 794
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 797
    :cond_2
    const-string v0, "File not found"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 799
    const-string v0, "Video file is not downloaded. do login again"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method private setBookMarkButton()Landroid/widget/LinearLayout;
    .locals 5

    .line 690
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    const/4 v3, 0x0

    .line 691
    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 693
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 694
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-string v4, "Add Bookmark"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 696
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private setDataSourcesForVideo(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 170
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setVideoLayout()V

    return-void
.end method

.method private setOpenIconVisibilityByMediaType(Ljava/lang/String;)V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openVideoButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openPdfButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openImageButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openAudioButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "IMAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 459
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openVideoButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 461
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openPdfButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 468
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openImageButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 471
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openAudioButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 465
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->openPdfButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
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

.method private setVideoLayout()V
    .locals 5

    .line 174
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 175
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 176
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->playVideoSequentially()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 178
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 179
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 180
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->createToggle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->sessionStartDate:Ljava/util/Date;

    .line 187
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 189
    :cond_0
    const-string v0, "There is no video to play"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private showPopUpWindow(Landroid/view/View;)V
    .locals 5

    .line 709
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->text_popup_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 711
    new-instance v1, Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->width:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    .line 712
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 714
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->popup_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 715
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->popup_note:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->note:Lcom/google/android/material/textfield/TextInputLayout;

    .line 716
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->mic_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 737
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 738
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$15;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 2

    .line 877
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 878
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 880
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 883
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 884
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 885
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 886
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 966
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3f9

    if-ne p1, p2, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->generateTreeView()Landroid/view/View;

    move-result-object p1

    .line 969
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 970
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 11

    .line 866
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 867
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 868
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 869
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->askForFeedback()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 10

    .line 853
    const-string p1, "LMSVideoPlayer"

    const-string v0, "onCompletion Called"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 854
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 855
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 856
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 857
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 858
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->sessionStartDate:Ljava/util/Date;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedVideo:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 859
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->askForFeedback()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 137
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->finish()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 147
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 151
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->height:I

    .line 152
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->width:I

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    .line 155
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 156
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getDataFromBundle()V

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 957
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 958
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 837
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->currentPosition:I

    .line 900
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public startPDFViewerActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string p1, "fileName"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string p1, "fromLms"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    const-string p1, "courseId"

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 336
    const-string p1, "transcript"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lesson"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3f9

    .line 338
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 843
    const-string p1, "LMSVideoPlayer"

    const-string p2, "surfaceChanged called"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 807
    const-string v0, "surfaceCreated Called"

    const-string v1, "LMSVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 810
    :try_start_0
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 811
    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 813
    invoke-virtual {p1}, Landroid/widget/MediaController;->bringToFront()V

    .line 814
    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 815
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V

    .line 828
    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;->setMediaController(Landroid/widget/MediaController;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    .line 815
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 830
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->finish()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 848
    const-string p1, "LMSVideoPlayer"

    const-string v0, "surfaceDestroyed Called"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
