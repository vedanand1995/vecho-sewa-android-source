.class public Lcom/argusoft/sewa/android/app/activity/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cbRememberMe:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private etPassword:Landroid/widget/EditText;

.field private etUsername:Landroid/widget/EditText;

.field private isResume:Z

.field private loginButton:Landroid/widget/Button;

.field loginDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LoginBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loginPassword:Ljava/lang/String;

.field private loginUsername:Ljava/lang/String;

.field moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

.field private myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

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

    .line 63
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 79
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->isResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Landroid/content/Context;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->cbRememberMe:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 578
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 579
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 584
    :cond_0
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xc0

    if-ge v0, p1, :cond_2

    .line 589
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v0, "ANDROID_APP_LINK"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 594
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    return v1

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    .line 600
    const-string v0, "App Update status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "New application is available. Please update now. Contact helpline in case of any help required."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x69

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method private checkIfNotificationIsAccessibleToUser(Ljava/lang/String;)Z
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->retrieveFormAccessibilityBeanByFormType(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 565
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getTrainingReq()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MOVE_TO_PRODUCTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private continueProcess()V
    .locals 3

    const/4 v0, 0x1

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v1

    sput-boolean v1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    sput-boolean v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    .line 245
    :goto_0
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->isResume:Z

    if-eqz v1, :cond_1

    .line 246
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isUserInProduction(Ljava/lang/String;)I

    move-result v1

    .line 248
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setUserInProductionOrTraining(I)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->doAfterLogin(Z)V

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setLoginScreen()V

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setLoginScreen()V

    :goto_1
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private isShowYearEndSummaryFeatureAvailable()Z
    .locals 4

    const/4 v0, 0x0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->versionDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    const-string v3, "showYearEndSummary"

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 473
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

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method private onCheckUpdateComplete()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    const-string v3, "From"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    const-string v3, "logout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setFirstLogin(Z)V

    .line 149
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 150
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 151
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 152
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->isResume:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    return-void

    .line 165
    :cond_1
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    return-void

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#### DB SEWA APP VERSION :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "m"

    if-nez v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    :cond_3
    const-string v1, ""

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 178
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "techo_app_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-direct {p0, v2, v4}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 184
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xc0

    if-le v2, v5, :cond_a

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#### APP NAME (apk name): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#### Current Version :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " & Config Local Version : 192"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    .line 190
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_6
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isDownloadNotInProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 194
    :try_start_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "ANDROID_APP_LINK"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v0, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    return-void

    :cond_7
    if-eqz v1, :cond_8

    .line 205
    const-string v1, "App Update status"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "New application is available. Please update now. Contact helpline in case of any help required."

    .line 206
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LoginActivity$2;

    invoke-direct {v3, p0, v4, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x69

    .line 205
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    goto :goto_2

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 224
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    goto :goto_2

    .line 228
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    goto :goto_2

    .line 231
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### Latest version.... So, Deleting all the files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 234
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->continueProcess()V

    :goto_2
    return-void
.end method

.method private onDoAfterLoginComplete()V
    .locals 5

    .line 484
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    .line 486
    sget-boolean v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->isAnyFormTrainingCompleted()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity_;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    sput-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    .line 491
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 492
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->finish()V

    return-void

    .line 497
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 498
    invoke-static {}, Lcom/argusoft/sewa/android/app/SewaApplication;->firebaseAnalyticsInstance()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/argusoft/sewa/android/app/SewaApplication;->firebaseAnalyticsInstance()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_first_name"

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/argusoft/sewa/android/app/SewaApplication;->firebaseAnalyticsInstance()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/argusoft/sewa/android/app/SewaApplication;->firebaseAnalyticsInstance()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_role"

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Asha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "isFromLogin"

    if-eqz v0, :cond_1

    .line 503
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 505
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FHW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 506
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getOtpVerificationRequired()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 508
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getReverificationPeriod()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 509
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getReverificationPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    neg-int v2, v2

    .line 510
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 511
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getOtpVerificationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 512
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getOtpVerificationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 515
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 519
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 522
    :cond_5
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MPHW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 523
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 525
    :cond_6
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CHO-HWC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 526
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UAAM MO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    .line 528
    :cond_7
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Female Health Supervisor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 529
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Supervisor Staff Nurse Corporation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_2

    .line 531
    :cond_8
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AWW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 532
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 533
    :cond_9
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RBSK MO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 534
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RBSK Pharmacist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 535
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Private Hospital -Paeditracican"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 537
    :cond_a
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LAB Technician"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 538
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 539
    :cond_b
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MO PHC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 540
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MO UPHC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    .line 542
    :cond_c
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ophthalmic Asst."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 543
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 544
    :cond_d
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Asha Facilitator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 545
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 546
    :cond_e
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MPHS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 547
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 541
    :cond_f
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMO_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 536
    :cond_10
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 530
    :cond_11
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 527
    :cond_12
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_13
    :goto_4
    if-eqz v2, :cond_15

    .line 552
    sput-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    .line 553
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->isShowYearEndSummaryFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 554
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->numberOfTimesLoggedIn:Ljava/lang/Integer;

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->numberOfTimesLoggedIn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->numberOfTimesLoggedIn:Ljava/lang/Integer;

    .line 556
    :cond_14
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadAllMediaToServer()V

    .line 557
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->finish()V

    :cond_15
    return-void
.end method


# virtual methods
.method public checkDeviceRootAccess()V
    .locals 1

    .line 107
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/RootUtil;->isDeviceRooted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "This Device is Rooted. We don\'t allow TeCHO+ Application to run in a rooted device."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlertAndExit(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->checkIfDeviceIsBlocked()V

    :goto_0
    return-void
.end method

.method public checkIfDeviceIsBlocked()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfDeviceIsBlockedOrDeleteDatabase()Ljava/util/Map;

    move-result-object v0

    .line 117
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isBlocked"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v0, "This Device is Blocked from using TeCHO+ Application."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlertAndExit(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isDatabaseDeleted"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "Your data has been reset, Please restart the application."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlertAndExit(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onCheckUpdateComplete()V

    :goto_0
    return-void
.end method

.method public doAfterLogin(Z)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Preparing the system for the first time may take a few minutes. Please wait."

    if-eqz v0, :cond_0

    const/16 v2, 0x2710

    .line 402
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 404
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 409
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 411
    :cond_2
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->doAfterSuccessfulLogin(Z)V

    return-void
.end method

.method public doAfterSuccessfulLogin(Z)V
    .locals 3

    .line 416
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->doAfterSuccessfulLogin(Z)V

    .line 425
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v0, "Network Available"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v0, "Network Unavailable"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 427
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v0, "Database issue while refresh/login. Please contact your co-ordinator."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Network"

    if-eqz p1, :cond_1

    .line 428
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)V

    const/16 v1, -0x69

    const-string v2, "App data error. The data will be reset and synced once again."

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    goto :goto_1

    .line 436
    :cond_1
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)V

    const/16 v2, -0xc8

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 448
    :goto_1
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v0, "Network Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v0, "Network Issue During Fetching Data for User"

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 450
    :cond_2
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->generateToaster(Ljava/lang/String;)V

    goto :goto_2

    .line 454
    :cond_3
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 455
    const-string v0, "lastRefreshDate"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 456
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->getSheetStatusByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Lcom/argusoft/sewa/android/app/model/VersionBean;

    move-result-object p1

    if-nez p1, :cond_4

    .line 458
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 459
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 461
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 462
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0, p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->updateVersionBean(Lcom/argusoft/sewa/android/app/model/VersionBean;)V

    .line 463
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onDoAfterLoginComplete()V

    :cond_5
    :goto_2
    return-void
.end method

.method public generateToaster(Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public hideProcessDialog()V
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hideProcessDialog: dialog window already detached"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$checkAuthenticityOfCurrentVersion$2$com-argusoft-sewa-android-app-activity-LoginActivity(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 603
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 604
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 608
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 612
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->finish()V

    return-void
.end method

.method synthetic lambda$doAfterSuccessfulLogin$0$com-argusoft-sewa-android-app-activity-LoginActivity(Landroid/view/View;)V
    .locals 1

    .line 431
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteDatabaseFileFromLocal(Landroid/content/Context;)V

    .line 432
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->restartApplication(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$doAfterSuccessfulLogin$1$com-argusoft-sewa-android-app-activity-LoginActivity(Landroid/view/View;)V
    .locals 1

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onDoAfterLoginComplete()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 573
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure to exit from application?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 574
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    if-eqz v0, :cond_8

    .line 320
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 321
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->finish()V

    goto/16 :goto_2

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    if-eqz v0, :cond_8

    .line 325
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    goto/16 :goto_2

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 328
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginUsername:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginPassword:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginUsername:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginPassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Setting up the Application. Please wait."

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 341
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 343
    :cond_5
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)V

    .line 355
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->start()V

    goto :goto_2

    .line 335
    :cond_6
    :goto_0
    const-string v0, "Please Enter Password"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 332
    :cond_7
    :goto_1
    const-string v0, "Please Enter Username"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    :cond_8
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v0, "Setting up the Application. Please wait."

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 97
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 98
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->checkDeviceRootAccess()V

    .line 99
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->txtUsername:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etUsername:Landroid/widget/EditText;

    .line 100
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->txtPassword:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etPassword:Landroid/widget/EditText;

    .line 101
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->cbRememberMe:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->cbRememberMe:Landroid/widget/CheckBox;

    .line 102
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->loginButton:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    return-void
.end method

.method public onLoginComplete(Ljava/lang/String;I)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v2, "Network Connection Error"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 372
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    :cond_1
    const-string v0, "Login Successful With Network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    const-string v0, "\u0aa4\u0aae\u0abe\u0ab0\u0abe \u0aae\u0acb\u0aac\u0abe\u0a87\u0ab2\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a85\u0aa8\u0ac7 \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0aac\u0a82\u0aa7\u0aac\u0ac7\u0ab8\u0aa4\u0ac0 \u0aa8\u0aa5\u0ac0. \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a9b\u0ac7 : "

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 387
    :cond_2
    const-string v0, "Login Successful Without Network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 388
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 390
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    goto :goto_3

    .line 391
    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setUserInProductionOrTraining(I)V

    .line 392
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->doAfterLogin(Z)V

    goto :goto_3

    .line 377
    :cond_5
    :goto_1
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_6

    .line 379
    :try_start_0
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1, v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 380
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    :cond_6
    :goto_2
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setUserInProductionOrTraining(I)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->doAfterLogin(Z)V

    :goto_3
    return-void
.end method

.method public setLoginScreen()V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    .line 296
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_login:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setContentView(I)V

    .line 297
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->txtUsername:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etUsername:Landroid/widget/EditText;

    .line 298
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->txtPassword:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etPassword:Landroid/widget/EditText;

    .line 299
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->cbRememberMe:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->cbRememberMe:Landroid/widget/CheckBox;

    .line 300
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->loginButton:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    .line 301
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->versionView:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 302
    const-string v1, "v. 4.1.5"

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etUsername:Landroid/widget/EditText;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->cbRememberMe:Landroid/widget/CheckBox;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isRemember()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isRemember()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->etPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPasswordPlain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUserInProductionOrTraining(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 273
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const-string v0, "Network Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    const-string p1, "User server checking fail"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    const-string p1, "User is not available on server"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 279
    const-string p1, "You are working on production"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    sget p1, Lcom/argusoft/sewa/android/app/R$style;->techo_app:I

    sput p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 282
    const-string p1, "You are working on training"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    sget p1, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    sput p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 285
    sget-boolean p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    if-eqz p1, :cond_4

    .line 286
    sget p1, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    sput p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    goto :goto_0

    .line 288
    :cond_4
    sget p1, Lcom/argusoft/sewa/android/app/R$style;->techo_app:I

    sput p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    :cond_5
    :goto_0
    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 6

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    .line 261
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 262
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public showAlertAndExit(Ljava/lang/String;)V
    .locals 7

    .line 128
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    .line 129
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/LoginActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)V

    .line 137
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/4 v2, 0x0

    const/16 v5, -0x69

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 138
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
