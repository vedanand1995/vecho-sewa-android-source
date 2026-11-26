.class public Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "CustomPDFViewerActivity.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;


# instance fields
.field private courseId:Ljava/lang/Integer;

.field private feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

.field private fromLms:Ljava/lang/Boolean;

.field private isTranscript:Ljava/lang/Boolean;

.field private lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private path:Ljava/lang/String;

.field private pdfFileName:Ljava/lang/String;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->fromLms:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->isTranscript:Ljava/lang/Boolean;

    return-void
.end method

.method private displayFromAsset()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    const-string v0, "File is corrupted."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->finish()V

    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "File Not Found"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->finish()V

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "Path of file not found."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->finish()V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->hideProcessDialog()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 87
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->showProcessDialog()V

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->pdf_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 89
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pdf_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 90
    new-instance v3, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {v3, p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 91
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->back_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 95
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->setContentView(Landroid/view/View;)V

    .line 103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->displayFromAsset()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 7

    .line 142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->fromLms:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->isTranscript:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 145
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->startDate:Ljava/util/Date;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 148
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getUserFeedbackRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-direct {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    .line 152
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->show()V

    return-void

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    .line 159
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->path:Ljava/lang/String;

    .line 59
    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->pdfFileName:Ljava/lang/String;

    .line 60
    const-string v0, "fromLms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->fromLms:Ljava/lang/Boolean;

    .line 61
    const-string v0, "transcript"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->isTranscript:Ljava/lang/Boolean;

    .line 62
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->fromLms:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "courseId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->courseId:Ljava/lang/Integer;

    .line 64
    const-string v0, "lesson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->startDate:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 66
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->isTranscript:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->startDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPageChanged(II)V
    .locals 4

    .line 83
    const-string v0, "PDF Viewer"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->pdfFileName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const-string p1, "%s (%s) (%s / %s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->initView()V

    .line 78
    const-string v0, "PDF Viewer"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method
