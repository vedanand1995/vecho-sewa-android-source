.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomeScreenMenuActivity.java"


# instance fields
.field adapter:Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;

.field alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field alertDialogShown:Z

.field context:Landroid/content/Context;

.field private isSyncing:Z

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LoginBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

.field processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

.field versionDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 101
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    .line 106
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->isSyncing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showTrainingCompletedForm()V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startLoginActivity()V

    return-void
.end method

.method private checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 716
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 717
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 722
    :cond_0
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 724
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    .line 726
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xc0

    if-ge v0, p1, :cond_3

    .line 730
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v0, "ANDROID_APP_LINK"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 732
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

    .line 738
    :cond_2
    const-string v0, "App Update status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "New application is available. Please update now. Contact helpline in case of any help required."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;

    invoke-direct {v2, p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x69

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private getLanguageMenuClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    const/4 v0, -0x1

    .line 471
    filled-new-array {v0}, [I

    move-result-object v0

    .line 472
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;[I)V

    return-object v1
.end method

.method static synthetic lambda$getLanguageMenuClickListener$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private onCheckUpdateComplete()V
    .locals 6

    .line 645
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### onCheckUpdateComplete called from HomeScreenMenuActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 658
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

    .line 659
    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "m"

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 661
    :cond_2
    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 664
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "techo_app_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-direct {p0, v0, v3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 670
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0xc0

    if-le v0, v4, :cond_8

    .line 671
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

    .line 672
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

    .line 674
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    .line 676
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 677
    :cond_5
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isDownloadNotInProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v1, "ANDROID_APP_LINK"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 682
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

    .line 689
    const-string v1, "App Update status"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "New application is available. Please update now. Contact helpline in case of any help required."

    .line 690
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$8;

    invoke-direct {v4, p0, v3, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x69

    .line 689
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    goto :goto_1

    .line 704
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 705
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 709
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### Latest version.... So, Deleting all the files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private showTrainingCompletedForm()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->isAnyFormTrainingCompleted()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startLoginActivity()V
    .locals 3

    .line 549
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v0, :cond_0

    .line 551
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 552
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 553
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 560
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->finish()V

    return-void
.end method

.method private syncGetHelp()V
    .locals 3

    .line 569
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    .line 570
    :goto_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStore_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/support/SupportStore_;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore_;->sync(Landroid/content/Context;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 572
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
.method public checkIfFormIsAccessibleToUser(Ljava/lang/String;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->retrieveFormAccessibilityBeanByFormType(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    move-result-object p1

    .line 223
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    .line 231
    sget-boolean v1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getTrainingReq()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getTrainingReq()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MOVE_TO_PRODUCTION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iput-boolean v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    if-nez p1, :cond_4

    .line 236
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    .line 237
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 251
    :cond_2
    iput-boolean v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    goto :goto_1

    .line 254
    :cond_3
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    if-nez p1, :cond_4

    .line 255
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    .line 256
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$5;

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public checkIsMobileTimeSyncedProperly()V
    .locals 3

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->checkIsMobileTimeSyncedProperly(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    .line 168
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 5

    .line 578
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 589
    :try_start_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->revalidateUserTokenForUser()V

    .line 590
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->doAfterSuccessfulLogin(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    .line 592
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->uploadAllMediaToServer()V

    .line 593
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->syncGetHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    .line 595
    :try_start_1
    const-string v2, "Network Connection Error"

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    .line 601
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v2, "Network Available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v2, "Database issue while refresh/login. Please contact your co-ordinator."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 611
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 617
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 618
    const-string v2, "lastRefreshDate"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 619
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->getSheetStatusByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Lcom/argusoft/sewa/android/app/model/VersionBean;

    move-result-object v1

    if-nez v1, :cond_2

    .line 621
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 622
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 624
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 625
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v2, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->updateVersionBean(Lcom/argusoft/sewa/android/app/model/VersionBean;)V

    .line 627
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCheckUpdateComplete()V

    .line 629
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->isSyncing:Z

    .line 630
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 631
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->finish()V

    .line 632
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 598
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    .line 599
    throw p1

    :cond_3
    const/4 p1, 0x0

    const/16 v0, -0x69

    .line 636
    const-string v1, "Network"

    const-string v2, "Internet connection is required to refresh."

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 639
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public hideProcessDialog()V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isShowYearEndSummaryFeatureAvailable()Z
    .locals 4

    const/4 v0, 0x0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->versionDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    const-string v3, "showYearEndSummary"

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 359
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method synthetic lambda$doUpdate$5$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    const/16 v1, 0x2710

    .line 581
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 583
    const-string v1, "Exclusive Breastfeeding is recommended for the child."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$doUpdate$6$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity(Landroid/view/View;)V
    .locals 1

    .line 606
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteDatabaseFileFromLocal(Landroid/content/Context;)V

    .line 607
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->restartApplication(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$doUpdate$7$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity()V
    .locals 4

    .line 603
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    const/16 v1, -0x69

    const-string v2, "Network"

    const-string v3, "App data error. The data will be reset and synced once again."

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method synthetic lambda$doUpdate$8$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity()V
    .locals 4

    .line 611
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, -0x69

    const-string v3, "Network"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method synthetic lambda$getLanguageMenuClickListener$1$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity([ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 489
    aput p3, p1, v0

    .line 490
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    if-nez p3, :cond_0

    .line 494
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showProcessDialog()V

    .line 496
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->networkCallsForLanguageChange(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_0
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GU"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showProcessDialog()V

    .line 502
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->networkCallsForLanguageChange(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$getLanguageMenuClickListener$3$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity([ILandroid/view/View;)V
    .locals 3

    .line 474
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_language:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 476
    const-string v0, "Choose a language"

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 477
    const-string v0, "English"

    .line 478
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gujarati"

    .line 479
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 482
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 483
    aput v2, p1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 485
    aput v1, p1, v2

    .line 488
    :goto_0
    aget v1, p1, v2

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;[I)V

    invoke-virtual {p2, v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 507
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda2;-><init>()V

    const-string v0, "Cancel"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$networkCallsForLanguageChange$4$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-string v1, "Some error occurred, Please try again after sometime"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setNavigationView$0$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity(Landroid/view/View;)V
    .locals 1

    .line 454
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->drawer_layout:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_0

    const v0, 0x800003

    .line 456
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 458
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public logoutAlertDialogClick(Landroid/view/View;)V
    .locals 3

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 390
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    .line 392
    :try_start_0
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 393
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 394
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 396
    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 400
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->finish()V

    goto :goto_2

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 405
    :try_start_1
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 406
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 409
    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 412
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->finish()V

    :cond_2
    :goto_2
    return-void
.end method

.method public networkCallsForLanguageChange(Ljava/lang/String;)V
    .locals 4

    .line 520
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->updateLanguagePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_0
    const-string v0, "Network"

    const-string v2, "You are offline.Please turn on internet or connect to wifi for language change."

    const/16 v3, -0x69

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    :try_start_1
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLanguageCode(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 539
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class v0, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-static {p1, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 541
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    .line 544
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catch_1
    move-exception p1

    .line 526
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->printStackTrace()V

    .line 528
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 529
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 116
    sget v1, Lcom/argusoft/sewa/android/app/R$menu;->menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 117
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 132
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->drawer_layout:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    .line 133
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    return v2

    .line 139
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_3

    .line 140
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->isSyncing:Z

    if-nez p1, :cond_2

    .line 141
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->isSyncing:Z

    .line 142
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->checkIsMobileTimeSyncedProperly()V

    .line 143
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v0, "Please wait...."

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 144
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    const/4 p1, 0x0

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    :cond_2
    return v2

    .line 152
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    if-ne v0, v1, :cond_4

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AboutActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 157
    :cond_4
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 122
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 124
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v1
.end method

.method protected setActionBarDesign()V
    .locals 4

    .line 417
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->toolbar_title:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 418
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->toolbar_subtitle:I

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 419
    const-string v2, "Dashboard"

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->ToolbarTitle:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v0, 0x8

    .line 421
    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 422
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 425
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x0

    .line 426
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 427
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 428
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_0
    return-void
.end method

.method setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 8

    .line 372
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->homescreen_icons:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 373
    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->isAnyUpdatedDataAvailable()Z

    move-result v6

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;ZZ)V

    iput-object v7, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->adapter:Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;

    .line 374
    new-instance p2, Landroid/widget/GridView;

    invoke-direct {p2, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    .line 376
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 378
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    const/4 p1, 0x0

    .line 380
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    const/16 p1, 0x10

    .line 381
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setGravity(I)V

    .line 382
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->adapter:Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    invoke-virtual {p2, p4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected setNavigationView()V
    .locals 3

    .line 434
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->nav_view:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 437
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 438
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 439
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 442
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 445
    const-string v2, "Choose Language"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->getLanguageMenuClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    :cond_0
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->nav_get_help:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_1

    .line 452
    const-string v1, "get_help"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    :cond_1
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->nav_footer:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 462
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 110
    sget p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 6

    .line 758
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->hideProcessDialog()V

    .line 759
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 760
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public showProcessDialog()V
    .locals 3

    .line 272
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    .line 273
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-string v2, "Processing"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 278
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    :cond_2
    return-void
.end method

.method public showYearEndSummaryAlert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 284
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 285
    const-string p1, "YearEndAlert"

    const-string p2, "Cannot show dialog. Context is not an Activity instance."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showYearEndSummaryAlert(Z)V
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->isShowYearEndSummaryFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->numberOfTimesLoggedIn:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showYearEndSummaryAlert(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
