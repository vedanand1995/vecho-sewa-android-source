.class public Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MenuActivity.java"


# instance fields
.field public alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private alertRequired:Ljava/lang/Boolean;

.field public context:Landroid/content/Context;

.field public processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field public serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field public techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 68
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    return-void
.end method

.method private checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 512
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 513
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 518
    :cond_0
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    .line 522
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xc0

    if-ge v0, p1, :cond_3

    .line 526
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v0, "ANDROID_APP_LINK"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    .line 534
    :cond_2
    const-string v0, "App Update status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "New application is available. Please update now. Contact helpline in case of any help required."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x69

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private getLastUpdateLabelView(Ljava/lang/String;Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 4

    .line 303
    new-instance v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 304
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getSheetStatusByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Lcom/argusoft/sewa/android/app/model/VersionBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 310
    :goto_0
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x0

    .line 313
    invoke-virtual {v1, p3, p3, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$style;->LastUpdateLabel:I

    invoke-virtual {v0, p3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 316
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLastUpdatedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 317
    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 318
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget p2, Lcom/argusoft/sewa/android/app/R$color;->lastUpdateLabelBackground:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundColor(I)V

    const/16 p1, 0xa

    .line 319
    invoke-virtual {v0, p1, p1, p1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    return-object v0
.end method

.method private onCheckUpdateComplete()V
    .locals 6

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### onCheckUpdateComplete called from MenuActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#### DB SEWA APP VERSION :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "m"

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    :cond_2
    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 456
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "techo_app_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-direct {p0, v0, v3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 462
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0xc0

    if-le v0, v4, :cond_8

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#### APP NAME (apk name): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#### Current Version :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & Config Local Version : 192"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 467
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    .line 468
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :cond_5
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isDownloadNotInProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v1, "ANDROID_APP_LINK"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 481
    const-string v1, "App Update status"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "New application is available. Please update now. Contact helpline in case of any help required."

    .line 482
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x69

    .line 481
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    goto :goto_1

    .line 493
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget-object v5, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 494
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### Latest version.... So, Deleting all the files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    .line 500
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private onHomePressed()V
    .locals 4

    .line 124
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertRequired:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->navigateToHomeScreen(Z)V

    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    .line 141
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure you want to go back to home screen ?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 144
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private syncGetHelp()V
    .locals 3

    .line 355
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    .line 356
    :goto_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStore_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/support/SupportStore_;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore_;->sync(Landroid/content/Context;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get Help sync failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 1

    .line 332
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 4

    .line 364
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->revalidateUserTokenForUser()V

    .line 376
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->doAfterSuccessfulLogin(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    .line 378
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->uploadAllMediaToServer()V

    .line 379
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->syncGetHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 381
    :try_start_1
    const-string v1, "Network Connection Error"

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    .line 387
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v1, "Network Available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v1, "Database issue while refresh/login. Please contact your co-ordinator."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 397
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 403
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 404
    const-string v1, "lastRefreshDate"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 405
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v2, v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getSheetStatusByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Lcom/argusoft/sewa/android/app/model/VersionBean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 407
    new-instance v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 408
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 410
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 411
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->updateVersionBean(Lcom/argusoft/sewa/android/app/model/VersionBean;)V

    .line 418
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCheckUpdateComplete()V

    .line 420
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 421
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 384
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    .line 385
    throw p1

    :cond_3
    const/4 p1, 0x0

    const/16 v0, -0x69

    .line 431
    const-string v1, "Network"

    const-string v2, "Internet connection is required to refresh."

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public fhsLastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 1

    .line 328
    const-string v0, "fhsLastUpdateTime"

    invoke-direct {p0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->getLastUpdateLabelView(Ljava/lang/String;Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    return-object p1
.end method

.method protected hideProcessDialog()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$checkAuthenticityOfCurrentVersion$5$com-argusoft-sewa-android-app-activity-MenuActivity(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 537
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 538
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 539
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 542
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void
.end method

.method synthetic lambda$doUpdate$0$com-argusoft-sewa-android-app-activity-MenuActivity()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    const/16 v1, 0x2710

    .line 367
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 369
    const-string v1, "Exclusive Breastfeeding is recommended for the child."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$doUpdate$1$com-argusoft-sewa-android-app-activity-MenuActivity(Landroid/view/View;)V
    .locals 1

    .line 392
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteDatabaseFileFromLocal(Landroid/content/Context;)V

    .line 393
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->restartApplication(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$doUpdate$2$com-argusoft-sewa-android-app-activity-MenuActivity()V
    .locals 4

    .line 389
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    const/16 v1, -0x69

    const-string v2, "Network"

    const-string v3, "App data error. The data will be reset and synced once again."

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method synthetic lambda$doUpdate$3$com-argusoft-sewa-android-app-activity-MenuActivity()V
    .locals 4

    .line 397
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, -0x69

    const-string v3, "Network"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method synthetic lambda$onCheckUpdateComplete$4$com-argusoft-sewa-android-app-activity-MenuActivity(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 484
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 485
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 486
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 489
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void
.end method

.method public lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 1

    .line 324
    const-string v0, "lastRefreshDate"

    invoke-direct {p0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->getLastUpdateLabelView(Ljava/lang/String;Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    return-object p1
.end method

.method public navigateToHomeScreen(Z)V
    .locals 2

    .line 174
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v0, :cond_f

    .line 175
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 177
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FHW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 179
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPHW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 181
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHO-HWC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 182
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UAAM MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 184
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Female Health Supervisor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 185
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Supervisor Staff Nurse Corporation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 187
    :cond_4
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 189
    :cond_5
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RBSK MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 190
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RBSK Pharmacist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 191
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Private Hospital -Paeditracican"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    .line 193
    :cond_6
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAB Technician"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 195
    :cond_7
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MO PHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 196
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MO UPHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 198
    :cond_8
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ophthalmic Asst."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 200
    :cond_9
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asha Facilitator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 202
    :cond_a
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPHS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 197
    :cond_b
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMO_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 192
    :cond_c
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 186
    :cond_d
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 183
    :cond_e
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_11

    if-eqz p1, :cond_10

    .line 209
    const-string p1, "From"

    const-string v1, "logout"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const/high16 p1, 0x4000000

    .line 211
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    :cond_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 88
    sput-boolean p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 81
    sget v1, Lcom/argusoft/sewa/android/app/R$menu;->menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onHomePressed()V

    return v2

    .line 96
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_1

    .line 97
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v0, "Please wait...."

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 98
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 99
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->doUpdate(Ljava/lang/Boolean;)V

    return v2

    .line 105
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 149
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v1
.end method

.method public resumeActivity()V
    .locals 2

    .line 110
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setAlertRequired(Ljava/lang/Boolean;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertRequired:Ljava/lang/Boolean;

    return-void
.end method

.method protected setSubTitle(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 260
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v0, :cond_0

    .line 261
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object p1

    .line 264
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 75
    sget p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 4

    .line 242
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->toolbar_title:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->ToolbarTitle:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 p1, 0xf

    const/4 v2, 0x2

    const/16 v3, 0x8

    .line 246
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 251
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_menu_back:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 252
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 254
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 6

    .line 506
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    .line 507
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 508
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public showAlertAndFinish(Ljava/lang/String;)V
    .locals 1

    .line 282
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProcessDialog()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
