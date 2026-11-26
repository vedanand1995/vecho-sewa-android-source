.class public Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "CustomImageViewerActivity.java"


# instance fields
.field private courseId:Ljava/lang/Integer;

.field private feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

.field private fromLms:Ljava/lang/Boolean;

.field private lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private path:Ljava/lang/String;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->fromLms:Ljava/lang/Boolean;

    return-void
.end method

.method private initView()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->showProcessDialog()V

    .line 112
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->pdf_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 113
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->pdf_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 114
    new-instance v3, Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 115
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setMaxZoom(F)V

    const/high16 v4, -0x1000000

    .line 116
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setBackgroundColor(I)V

    .line 117
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->setContentView(Landroid/view/View;)V

    .line 121
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->back_button:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 122
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->hideProcessDialog()V

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "File is corrupted."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->finish()V

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "Path of file not found."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 7

    .line 87
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->fromLms:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 90
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->startDate:Ljava/util/Date;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getUserFeedbackRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-direct {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    .line 97
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->show()V

    return-void

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->path:Ljava/lang/String;

    .line 63
    const-string v0, "fromLms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->fromLms:Ljava/lang/Boolean;

    .line 64
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->fromLms:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "courseId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->courseId:Ljava/lang/Integer;

    .line 66
    const-string v0, "lesson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->startDate:Ljava/util/Date;

    if-eqz p1, :cond_1

    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->startDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 142
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->initView()V

    return-void
.end method
