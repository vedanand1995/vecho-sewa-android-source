.class public Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsSimulationActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "LmsSimulationActivity"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private final answerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private audioMediaPlayer:Landroid/media/MediaPlayer;

.field private caseDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field private caseImage:Landroid/widget/ImageView;

.field private caseTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field private endDate:Ljava/util/Date;

.field private flAudioView:Landroid/widget/FrameLayout;

.field private flVideoView:Landroid/widget/FrameLayout;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private final gson:Lcom/google/gson/Gson;

.field private isCorrectOptionSelected:Ljava/lang/Boolean;

.field private isFullScreen:Z

.field private isMediaVideo:Z

.field lmsQuestionConfigDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private myAudioComponent:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

.field myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

.field private nextButton:Lcom/google/android/material/button/MaterialButton;

.field private optionCorrectFeedback:Ljava/lang/String;

.field private optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

.field private optionInCorrectFeedback:Ljava/lang/String;

.field private optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

.field private quePosition:Ljava/lang/Integer;

.field private questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

.field private radioGroupMapFromAdapter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RadioGroup;",
            ">;"
        }
    .end annotation
.end field

.field private sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

.field private sectionDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

.field private startDate:Ljava/util/Date;

.field private testFor:Ljava/lang/String;

.field private viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isFullScreen:Z

    .line 111
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isMediaVideo:Z

    .line 112
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->gson:Lcom/google/gson/Gson;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsQuestionConfigDataBeanList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->answerMap:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->radioGroupMapFromAdapter:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseDescription:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flVideoView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isMediaVideo:Z

    return p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isFullScreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->footerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addAudioLessonWithControls(Ljava/lang/String;)V
    .locals 2

    .line 356
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAudioComponent:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    if-nez p1, :cond_0

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 360
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    .line 361
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p1, p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAudioComponent:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAudioComponent:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flAudioView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAudioComponent:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 365
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flAudioView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAudioComponent:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->play()V

    goto :goto_0

    .line 368
    :cond_1
    const-string p1, "File not found. Please refresh and try again."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addAudioLessonWithoutControls(Ljava/lang/String;)V
    .locals 3

    .line 373
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flAudioView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAudioPlayerForSimulations(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flAudioView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_0
    const-string p1, "File not found. Please refresh and try again."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addImageForScenario(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isMediaVideo:Z

    .line 384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private addVideoLesson(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isMediaVideo:Z

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->videoFileIsCorrupted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-string v0, "Some error occurred. Please refresh and try again."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->lms_universal_video_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->videoView:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    .line 278
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->media_controller:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    .line 279
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setMediaController(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    .line 280
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 281
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setVideoCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    .line 287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setTitle(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    .line 290
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    goto :goto_0

    .line 292
    :cond_1
    const-string p1, "File not found. Please refresh and try again."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getQuestionSetFromIntent()V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    const-string v1, "testFor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->testFor:Ljava/lang/String;

    .line 160
    const-string v1, "questionSet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->hideProcessDialog()V

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    const-string v1, "Question Set not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 167
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 169
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V

    .line 171
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionDataBeans:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 143
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->include:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 144
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 145
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getQuestionSetFromIntent()V

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionDataBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setCaseStudyScreen()V

    return-void

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->hideProcessDialog()V

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    const-string v1, "Question Section Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    return-void
.end method

.method static synthetic lambda$setupViewPager$3(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 453
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$setupViewPager$5(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 499
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private saveQuizAndFinish()V
    .locals 3

    .line 552
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;-><init>()V

    .line 553
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setUserId(Ljava/lang/Integer;)V

    .line 554
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setQuestionSetId(Ljava/lang/Integer;)V

    .line 555
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setStartDate(Ljava/util/Date;)V

    .line 556
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setEndDate(Ljava/util/Date;)V

    .line 557
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->answerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setAnswerJson(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->testFor:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->storeLmsTestResult(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->updateNumberOfAttemptsForThisQuiz()V

    .line 560
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    const-string v1, "Quiz Completed"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    return-void
.end method

.method private setVideoCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 1

    .line 297
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setVideoViewCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;)V

    return-void
.end method

.method private setupViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 4

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsQuestionConfigDataBeanList:Ljava/util/List;

    .line 398
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsQuestionConfigDataBeanList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, p0}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/List;Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;)V

    .line 399
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 403
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->custom_option_alert_box:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 404
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 405
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 407
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSubmitAlertDialog()V
    .locals 4

    .line 514
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->endDate:Ljava/util/Date;

    .line 515
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTimeSpentFromMillis(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You have successfully completed the quiz in"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Please click on submit to submit your answers"

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-string v0, "%s %s, %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 516
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "<font color=\'#0081B4\'><b>Well Done!!</b></font>"

    .line 517
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 518
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 519
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V

    .line 520
    const-string v2, "Submit"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private testAndSetLmsAnswerDataBean()Ljava/lang/Boolean;
    .locals 8

    .line 527
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 528
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->radioGroupMapFromAdapter:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_5

    .line 529
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_2

    .line 533
    :cond_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 534
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 535
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 538
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 539
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 540
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 542
    :cond_2
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 543
    :cond_3
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->answerMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 530
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x1

    .line 548
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private updateNumberOfAttemptsForThisQuiz()V
    .locals 9

    .line 565
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 590
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 569
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v4

    .line 570
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 571
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 572
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 573
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 574
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizAttempts(Ljava/lang/Integer;)V

    .line 575
    invoke-virtual {v6, v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setLatestScore(Ljava/lang/Integer;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 581
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 585
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;-><init>()V

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizAttempts(Ljava/lang/Integer;)V

    .line 587
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefId(Ljava/lang/Integer;)V

    .line 588
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefType(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizTypeId(Ljava/lang/Integer;)V

    .line 590
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setLatestScore(Ljava/lang/Integer;)V

    .line 591
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_5

    .line 595
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>()V

    .line 597
    :cond_5
    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->setQuizMetaData(Ljava/util/List;)V

    .line 598
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createLmsUserMetaDataBean(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V

    return-void
.end method


# virtual methods
.method public getAnswersOfCaseStudy(Ljava/util/Map;Ljava/lang/Integer;Landroid/widget/RadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RadioGroup;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/widget/RadioButton;",
            ")V"
        }
    .end annotation

    .line 634
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->quePosition:Ljava/lang/Integer;

    .line 635
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    .line 636
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->radioGroupMapFromAdapter:Ljava/util/Map;

    return-void
.end method

.method synthetic lambda$addImageForScenario$1$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 388
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity_;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    const-string v0, "path"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3f8

    .line 390
    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$addVideoLesson$0$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Ljava/lang/String;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 282
    const-string p2, "Some error occurred. Please refresh and try again."

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onBackPressed$8$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Landroid/view/View;)V
    .locals 1

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 648
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 649
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    goto :goto_0

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupViewPager$2$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Landroidx/viewpager2/widget/ViewPager2;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    .line 437
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p3

    const/4 v0, 0x1

    add-int/2addr p3, v0

    invoke-virtual {p1, p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    const/4 p1, 0x0

    .line 438
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    .line 439
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$setupViewPager$4$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->testAndSetLmsAnswerDataBean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 484
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->showSubmitAlertDialog()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupViewPager$6$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 7

    .line 408
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    if-eqz p4, :cond_12

    .line 409
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsQuestionConfigDataBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "<font color=\'#03C988\'><b>Great! Your answer is correct</b></font>"

    const-string v3, "<font color=\'#F94A29\'><b>Oops! Your answer is incorrect</b></font>"

    const/4 v4, 0x0

    if-eq p4, v0, :cond_8

    .line 410
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsQuestionConfigDataBeanList:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->quePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 411
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isCorrectOptionSelected:Ljava/lang/Boolean;

    .line 414
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getFeedbackValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedback:Ljava/lang/String;

    .line 415
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 418
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isCorrectOptionSelected:Ljava/lang/Boolean;

    .line 420
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getFeedbackValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedback:Ljava/lang/String;

    .line 421
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    goto/16 :goto_0

    .line 425
    :cond_4
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isCorrectOptionSelected:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 426
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->tvOptionTitle:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->tvOptionFeedback:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedback:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    if-eqz p4, :cond_5

    .line 430
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 432
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 433
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    :cond_5
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p4, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p3}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 442
    :cond_6
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->tvOptionTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->tvOptionFeedback:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedback:Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/argusoft/sewa/android/app/R$string;->ok:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    if-eqz p1, :cond_7

    .line 446
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 448
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 449
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    :cond_7
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 457
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lmsQuestionConfigDataBeanList:Ljava/util/List;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->quePosition:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 458
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 459
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 460
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isCorrectOptionSelected:Ljava/lang/Boolean;

    .line 461
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getFeedbackValue()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedback:Ljava/lang/String;

    goto :goto_1

    .line 463
    :cond_b
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 464
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->selectedRadioButtonFromAdapter:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 465
    :cond_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isCorrectOptionSelected:Ljava/lang/Boolean;

    .line 466
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getFeedbackValue()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedback:Ljava/lang/String;

    goto/16 :goto_1

    .line 470
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isCorrectOptionSelected:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 471
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->tvOptionTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->tvOptionFeedback:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedback:Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/argusoft/sewa/android/app/R$string;->ok:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    if-eqz p1, :cond_e

    .line 475
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 477
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 478
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    :cond_e
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 488
    :cond_f
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->tvOptionTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->tvOptionFeedback:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedback:Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/argusoft/sewa/android/app/R$string;->ok:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    if-eqz p1, :cond_10

    .line 492
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->optionInCorrectFeedbackBean:Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 494
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 495
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->ivOptionImage:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    :cond_10
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p3}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :goto_2
    invoke-virtual {p3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 504
    invoke-virtual {p3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_11
    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    .line 508
    :cond_12
    const-string p1, "Please select at least one option"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method synthetic lambda$showSubmitAlertDialog$7$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 521
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->saveQuizAndFinish()V

    .line 522
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 642
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->isFullScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 643
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(Z)V

    .line 646
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V

    .line 655
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to cancel the test?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 658
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_lms_case_study_quiz:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setContentView(I)V

    .line 126
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 613
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->onBackPressed()V

    return v2

    .line 623
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 624
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->navigateToHomeScreen(Z)V

    .line 625
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    return v2

    :cond_1
    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 663
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 664
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 604
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 605
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 606
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 607
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 133
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setCaseStudyScreen()V
    .locals 4

    .line 180
    const-string v0, "Case Study Scenario"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setTitle(Ljava/lang/String;)V

    .line 181
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->caseTitle:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->caseDescription:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 183
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->questions_view_pager:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 184
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->nextButton:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    .line 185
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->caseImage:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseImage:Landroid/widget/ImageView;

    .line 186
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->flVideoView:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flVideoView:Landroid/widget/FrameLayout;

    .line 187
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->flAudioView:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->flAudioView:Landroid/widget/FrameLayout;

    .line 188
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->footerLayout:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 189
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->tabLayout:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 193
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const-string v2, "Description"

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 194
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const-string v2, "Media"

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 196
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->startDate:Ljava/util/Date;

    .line 197
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionDataBeans:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    .line 198
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->caseDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "IMAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "VIDEO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->addVideoLesson(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_4
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->addImageForScenario(Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->sectionData:Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getAudioWithControls()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->addAudioLessonWithControls(Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_5
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->addAudioLessonWithoutControls(Ljava/lang/String;)V

    .line 234
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setupViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 235
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->hideProcessDialog()V

    return-void

    .line 199
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->hideProcessDialog()V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    const-string v1, "Question Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->finish()V

    return-void
.end method
