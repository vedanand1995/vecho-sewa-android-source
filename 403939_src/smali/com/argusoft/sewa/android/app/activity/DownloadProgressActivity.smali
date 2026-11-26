.class public Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DownloadProgressActivity.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 33
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->showAppInstallDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setSubTitle()V
    .locals 2

    .line 151
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2

    .line 135
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->toolbar_title:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$style;->ToolbarTitle:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 145
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->setSubTitle()V

    return-void
.end method

.method private showAppInstallDialog()V
    .locals 4

    .line 116
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 118
    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "m"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "techo_app_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isDownloadNotInProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_download_progress:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->setContentView(I)V

    .line 41
    const-string p1, "download"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/DownloadManager;

    .line 42
    const-string p1, "APP_DOWNLOAD_PREF"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 43
    const-string v0, "downloadId"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->progressbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 50
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->roundProgressBar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ProgressBar;

    .line 52
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->percent:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 53
    const-string v0, "Hello..."

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, v5

    move-object v5, p1

    move-object v6, v7

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;JLandroid/app/DownloadManager;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 111
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 131
    const-string v0, "New Application Downloader"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method
