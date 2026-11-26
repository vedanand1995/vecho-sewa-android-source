.class public Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NDHMHealthIdManagementActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;


# static fields
.field private static final CREATE_ABHA_NUMBER:Ljava/lang/String; = "createAbhaNumber"

.field private static final NDHM_HEALTH_ID_MANAGEMENT_REQUEST_CODE:I = 0x3e8

.field private static final SEED_ABHA_NUMBER:Ljava/lang/String; = "seedAbhaNumber"


# instance fields
.field private audioMediaPlayer:Landroid/media/MediaPlayer;

.field private beneficiaryName:Ljava/lang/String;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private featueName:Ljava/lang/String;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isForNonExistingMember:Ljava/lang/Boolean;

.field public listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ListValueBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memberId:Ljava/lang/Integer;

.field private mobileNumber:Ljava/lang/String;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private screen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->featueName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/Integer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->memberId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->screen:Ljava/lang/String;

    return-object p1
.end method

.method private addAudioView()V
    .locals 4

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v1, "field"

    const-string v2, "offline_health_id_consent"

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 356
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 366
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    .line 368
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->health_id_consent_audio_player_layout:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;-><init>(Landroid/content/Context;ILandroid/media/MediaPlayer;Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;)V

    .line 369
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private askForConsent()V
    .locals 5

    .line 376
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const-string v1, "EN"

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 380
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "Hereby declare that I am voluntarily sharing my ABHA number with TECHO_GUJARAT programme/ application. I am aware that TECHO_GUJARAT will authenticate my ABHA number with the ABDM system. I understand that this ABHA number may be linked with the Identification number that TECHO_GUJARAT may generate."

    goto :goto_1

    .line 383
    :cond_1
    const-string v0, "\u0a86\u0aa5\u0ac0 \u0a9c\u0abe\u0ab9\u0ac7\u0ab0 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 \u0ab9\u0ac1\u0a82 \u0ab8\u0acd\u0ab5\u0ac7\u0a9a\u0acd\u0a9b\u0abe\u0a8f \u0aae\u0abe\u0ab0\u0acb ABHA \u0aa8\u0a82\u0aac\u0ab0 TECHO_GUJARAT \u0aaa\u0acd\u0ab0\u0acb\u0a97\u0acd\u0ab0\u0abe\u0aae/ \u0a8f\u0aaa\u0acd\u0ab2\u0abf\u0a95\u0ac7\u0ab6\u0aa8 \u0ab8\u0abe\u0aa5\u0ac7 \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ac0 \u0ab0\u0ab9\u0acd\u0aaf\u0acb \u0a9b\u0ac1\u0a82. \u0ab9\u0ac1\u0a82 \u0a9c\u0abe\u0aa3\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 TECHO_GUJARAT \u0aae\u0abe\u0ab0\u0abe ABHA \u0aa8\u0a82\u0aac\u0ab0\u0aa8\u0ac7 ABDM \u0ab8\u0abf\u0ab8\u0acd\u0a9f\u0aae \u0ab5\u0aa1\u0ac7 \u0aaa\u0acd\u0ab0\u0aae\u0abe\u0aa3\u0abf\u0aa4 \u0a95\u0ab0\u0ab6\u0ac7. \u0ab9\u0ac1\u0a82 \u0ab8\u0aae\u0a9c\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 \u0a86 ABHA \u0aa8\u0a82\u0aac\u0ab0 TECHO_GUJARAT \u0a9c\u0aa8\u0ab0\u0ac7\u0a9f \u0a95\u0ab0\u0ac0 \u0ab6\u0a95\u0ac7 \u0aa4\u0ac7\u0ab5\u0abe \u0a93\u0ab3\u0a96 \u0aa8\u0a82\u0aac\u0ab0 \u0ab8\u0abe\u0aa5\u0ac7 \u0ab2\u0abf\u0a82\u0a95 \u0a95\u0ab0\u0ab5\u0abe\u0aae\u0abe\u0a82 \u0a86\u0ab5\u0ac0 \u0ab6\u0a95\u0ac7 \u0a9b\u0ac7."

    .line 386
    :goto_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)V

    .line 403
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    .line 404
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x69

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 406
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 407
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 113
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 114
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->nextButton:Landroid/widget/Button;

    .line 117
    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setActionForHealthIdScreen()V

    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$1(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 192
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$2(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 203
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$3(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 214
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$4(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 225
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$5(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 238
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$6(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 251
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$setConsentMessageScreen$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdManagementActivity(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 177
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 178
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p2, 0x1

    .line 179
    invoke-virtual {p1, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    invoke-virtual {p1, p3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 456
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    .line 457
    const-string p1, "healthIdNumber"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 458
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 459
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string p1, "healthId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 461
    const-string v0, "isFromOffline"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setResult(ILandroid/content/Intent;)V

    .line 463
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->finish()V

    return-void

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 467
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setActionForHealthIdScreen()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 502
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    .line 503
    const-string v0, "createAbhaNumber"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "seedAbhaNumber"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setActionForHealthIdScreen()V

    :cond_1
    return-void
.end method

.method public onCompletion()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 472
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->finish()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->screen:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 482
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 483
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "createAbhaNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "seedAbhaNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->finish()V

    goto :goto_0

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setActionForHealthIdScreen()V

    :cond_3
    :goto_0
    return v2

    .line 478
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->finish()V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 417
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 418
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setContentView(Landroid/view/View;)V

    .line 94
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->finish()V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memberId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->memberId:Ljava/lang/Integer;

    .line 103
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nameOfBeneficiary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "beneficiary"

    :goto_0
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->beneficiaryName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isForNonExistingMember"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->isForNonExistingMember:Ljava/lang/Boolean;

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "featureName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->featueName:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->mobileNumber:Ljava/lang/String;

    .line 108
    const-string v0, "Create ABHA"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setActionForHealthIdScreen()V
    .locals 7

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->screen:Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 427
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const-string v3, "Please choose action to perform for are you sure"

    .line 430
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->beneficiaryName:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "%s %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-static {v0, v0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    const-string v1, "Create ABHA Number"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->isForNonExistingMember:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, "Seed ABHA Number"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)V

    .line 450
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setConsentMessageScreen(I)V
    .locals 17

    move-object/from16 v12, p0

    .line 125
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const-string v1, "EN"

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 141
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "I am voluntarily sharing my Aadhaar Number / Virtual ID issued by the Unique Identification Authority of India (\u201cUIDAI\u201d), and my demographic information for the purpose of creating an Ayushman Bharat Health Account number (\u201cABHA number\u201d) and Ayushman Bharat Health Account address (\u201cABHA Address\u201d). I authorize NHA to use my Aadhaar number / Virtual ID for performing Aadhaar based authentication with UIDAI as per the provisions of the Aadhaar (Targeted Delivery of Financial and other Subsidies, Benefits and Services) Act, 2016 for the aforesaid purpose. I understand that UIDAI will share my e-KYC details, or response of \u201cYes\u201d with NHA upon successful authentication."

    const-string v1, "I hereby declare that:"

    const-string v2, "I intend to create Ayushman Bharat Health Account Number (\u201cABHA number\u201d) and Ayushman Bharat Health Account address (\u201cABHA Address\u201d) using document other than Aadhaar. (Click here to proceed further)"

    const-string v3, "I consent to usage of my ABHA address and ABHA number for linking of my legacy (past) government health records and those which will be generated during this encounter."

    const-string v4, "I authorize the sharing of all my health records with healthcare provider(s) for the purpose of providing healthcare services to me during this encounter."

    const-string v5, "I consent to the anonymization and subsequent use of my government health records for public health purposes."

    const-string v6, "confirm that I have duly informed and explained the beneficiary of the contents of consent for aforementioned purposes."

    const-string v7, "have been explained about the consent as stated above and hereby provide my consent for the aforementioned purposes."

    goto :goto_1

    .line 160
    :cond_1
    const-string v0, "\u0aaf\u0ac1\u0aa8\u0abf\u0a95 \u0a86\u0a87\u0aa1\u0ac7\u0aa8\u0acd\u0a9f\u0abf\u0aab\u0abf\u0a95\u0ac7\u0ab6\u0aa8 \u0a93\u0aa5\u0acb\u0ab0\u0abf\u0a9f\u0ac0 \u0a93\u0aab \u0a87\u0aa8\u0acd\u0aa1\u0abf\u0aaf\u0abe (\u201cUIDAI\u201d) \u0aa6\u0acd\u0ab5\u0abe\u0ab0\u0abe \u0a9c\u0abe\u0ab0\u0ac0 \u0a95\u0ab0\u0abe\u0aaf\u0ac7\u0ab2 \u0aae\u0abe\u0ab0\u0acb \u0a86\u0aa7\u0abe\u0ab0 \u0aa8\u0a82\u0aac\u0ab0/\u0ab5\u0ab0\u0acd\u0a9a\u0acd\u0aaf\u0ac1\u0a85\u0ab2 ID \u0a85\u0aa8\u0ac7 \u0aae\u0abe\u0ab0\u0ac0 \u0ab5\u0ab8\u0acd\u0aa4\u0ac0 \u0ab5\u0abf\u0ab7\u0aaf\u0a95 \u0aae\u0abe\u0ab9\u0abf\u0aa4\u0ac0 \u0ab9\u0ac1\u0a82 \u0ab8\u0acd\u0ab5\u0ac7\u0a9a\u0acd\u0a9b\u0abe\u0a8f \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0aa8\u0a82\u0aac\u0ab0 (\u201cABHA \u0aa8\u0a82\u0aac\u0ab0\u201d) \u0a85\u0aa8\u0ac7 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8 (\u201cABHA \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8\u201d) \u0aac\u0aa8\u0abe\u0ab5\u0ab5\u0ac1\u0a82. \u0ab9\u0ac1\u0a82 NHA \u0aa8\u0acb \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a85\u0aa7\u0abf\u0a95\u0ac3\u0aa4 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a86\u0aa7\u0abe\u0ab0\u0aa8\u0ac0 \u0a9c\u0acb\u0a97\u0ab5\u0abe\u0a88\u0a93 \u0a85\u0aa8\u0ac1\u0ab8\u0abe\u0ab0 UIDAI \u0ab8\u0abe\u0aa5\u0ac7 \u0a86\u0aa7\u0abe\u0ab0 \u0a86\u0aa7\u0abe\u0ab0\u0abf\u0aa4 \u0aaa\u0acd\u0ab0\u0aae\u0abe\u0aa3\u0ac0\u0a95\u0ab0\u0aa3 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a86\u0aa7\u0abe\u0ab0 \u0aa8\u0a82\u0aac\u0ab0 / \u0ab5\u0ab0\u0acd\u0a9a\u0acd\u0aaf\u0ac1\u0a85\u0ab2 \u0a86\u0a88\u0aa1\u0ac0 (\u0aa8\u0abe\u0aa3\u0abe\u0a95\u0ac0\u0aaf \u0a85\u0aa8\u0ac7 \u0a85\u0aa8\u0acd\u0aaf \u0ab8\u0aac\u0ab8\u0abf\u0aa1\u0ac0\u0aa8\u0ac0 \u0ab2\u0a95\u0acd\u0ab7\u0abf\u0aa4 \u0aa1\u0abf\u0ab2\u0abf\u0ab5\u0ab0\u0ac0, \u0a89\u0aaa\u0ab0\u0acb\u0a95\u0acd\u0aa4 \u0ab9\u0ac7\u0aa4\u0ac1 \u0aae\u0abe\u0a9f\u0ac7 \u0ab2\u0abe\u0aad\u0acb \u0a85\u0aa8\u0ac7 \u0ab8\u0ac7\u0ab5\u0abe\u0a93) \u0a85\u0aa7\u0abf\u0aa8\u0abf\u0aaf\u0aae, 2016. \u0ab9\u0ac1\u0a82 \u0ab8\u0aae\u0a9c\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 UIDAI \u0aae\u0abe\u0ab0\u0ac0 \u0a87-\u0a95\u0ac7\u0ab5\u0abe\u0aaf\u0ab8\u0ac0 \u0ab5\u0abf\u0a97\u0aa4\u0acb \u0a85\u0aa5\u0ab5\u0abe \u0ab8\u0aab\u0ab3 \u0aaa\u0acd\u0ab0\u0aae\u0abe\u0aa3\u0ac0\u0a95\u0ab0\u0aa3 \u0aaa\u0ab0 NHA \u0ab8\u0abe\u0aa5\u0ac7 \u201c\u0ab9\u0abe\u201d \u0aa8\u0acb \u0aaa\u0acd\u0ab0\u0aa4\u0abf\u0ab8\u0abe\u0aa6 \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ab6\u0ac7."

    const-string v1, "\u0ab9\u0ac1\u0a82 \u0a86\u0aa5\u0ac0 \u0a9c\u0abe\u0ab9\u0ac7\u0ab0 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7:"

    const-string v2, "\u0ab9\u0ac1\u0a82 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0aa8\u0a82\u0aac\u0ab0 (\u201cABHA \u0aa8\u0a82\u0aac\u0ab0\u201d) \u0a85\u0aa8\u0ac7 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8 (\u201cABHA \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8\u201d) \u0ab8\u0abf\u0ab5\u0abe\u0aaf\u0aa8\u0abe \u0a85\u0aa8\u0acd\u0aaf \u0aa6\u0ab8\u0acd\u0aa4\u0abe\u0ab5\u0ac7\u0a9c\u0acb\u0aa8\u0acb \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0a95\u0ab0\u0ac0\u0aa8\u0ac7 \u0aac\u0aa8\u0abe\u0ab5\u0ab5\u0abe \u0aae\u0abe\u0a97\u0ac1\u0a82 \u0a9b\u0ac1\u0a82. \u0a86\u0aa7\u0abe\u0ab0. (\u0ab5\u0aa7\u0ac1 \u0a86\u0a97\u0ab3 \u0ab5\u0aa7\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a85\u0ab9\u0ac0\u0a82 \u0a95\u0acd\u0ab2\u0abf\u0a95 \u0a95\u0ab0\u0acb)"

    const-string v3, "\u0ab9\u0ac1\u0a82 \u0aae\u0abe\u0ab0\u0abe \u0ab2\u0ac7\u0a97\u0ab8\u0ac0 (\u0aad\u0ac2\u0aa4\u0a95\u0abe\u0ab3\u0aa8\u0abe) \u0ab8\u0ab0\u0a95\u0abe\u0ab0\u0ac0 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac7\u0a95\u0acb\u0ab0\u0acd\u0aa1 \u0a85\u0aa8\u0ac7 \u0a86 \u0a8f\u0aa8\u0acd\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f\u0ab0 \u0aa6\u0ab0\u0aae\u0abf\u0aaf\u0abe\u0aa8 \u0a9c\u0ac7 \u0a9c\u0aa8\u0ab0\u0ac7\u0a9f \u0aa5\u0ab6\u0ac7 \u0aa4\u0ac7\u0aa8\u0ac7 \u0ab2\u0abf\u0a82\u0a95 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0aae\u0abe\u0ab0\u0abe ABHA \u0ab8\u0ab0\u0aa8\u0abe\u0aae\u0ac1\u0a82 \u0a85\u0aa8\u0ac7 ABHA \u0aa8\u0a82\u0aac\u0ab0\u0aa8\u0acb \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0a95\u0ab0\u0ab5\u0abe\u0aa8\u0ac0 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0a86\u0aaa\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    const-string v4, "\u0a86 \u0a8f\u0aa8\u0acd\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f\u0ab0 \u0aa6\u0ab0\u0aae\u0abf\u0aaf\u0abe\u0aa8 \u0aae\u0aa8\u0ac7 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf\u0ab8\u0a82\u0aad\u0abe\u0ab3 \u0ab8\u0ac7\u0ab5\u0abe\u0a93 \u0aaa\u0ac2\u0ab0\u0ac0 \u0aaa\u0abe\u0aa1\u0ab5\u0abe\u0aa8\u0abe \u0ab9\u0ac7\u0aa4\u0ac1\u0aa5\u0ac0 \u0ab9\u0ac1\u0a82 \u0aae\u0abe\u0ab0\u0abe \u0aa4\u0aae\u0abe\u0aae \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac7\u0a95\u0acb\u0ab0\u0acd\u0aa1\u0aa8\u0ac7 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf\u0ab8\u0a82\u0aad\u0abe\u0ab3 \u0aaa\u0acd\u0ab0\u0aa6\u0abe\u0aa4\u0abe(\u0a93) \u0ab8\u0abe\u0aa5\u0ac7 \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a85\u0aa7\u0abf\u0a95\u0ac3\u0aa4 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    const-string v5, "\u0ab9\u0ac1\u0a82 \u0a9c\u0abe\u0ab9\u0ac7\u0ab0 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab9\u0ac7\u0aa4\u0ac1\u0a93 \u0aae\u0abe\u0a9f\u0ac7 \u0aae\u0abe\u0ab0\u0abe \u0ab8\u0ab0\u0a95\u0abe\u0ab0\u0ac0 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac7\u0a95\u0acb\u0ab0\u0acd\u0aa1\u0aa8\u0abe \u0a85\u0aa8\u0abe\u0aae\u0ac0\u0a95\u0ab0\u0aa3 \u0a85\u0aa8\u0ac7 \u0a85\u0aa8\u0ac1\u0a97\u0abe\u0aae\u0ac0 \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0aae\u0abe\u0a9f\u0ac7 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0a86\u0aaa\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    const-string v6, "\u0aaa\u0ac1\u0ab7\u0acd\u0a9f\u0abf \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 \u0aae\u0ac7\u0a82 \u0a89\u0aaa\u0ab0\u0acb\u0a95\u0acd\u0aa4 \u0ab9\u0ac7\u0aa4\u0ac1\u0a93 \u0aae\u0abe\u0a9f\u0ac7 \u0ab8\u0a82\u0aae\u0aa4\u0abf\u0aa8\u0ac0 \u0ab8\u0abe\u0aae\u0a97\u0acd\u0ab0\u0ac0\u0aa8\u0abe \u0ab2\u0abe\u0aad\u0abe\u0ab0\u0acd\u0aa5\u0ac0\u0aa8\u0ac7 \u0aaf\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac0\u0aa4\u0ac7 \u0a9c\u0abe\u0aa3 \u0a95\u0ab0\u0ac0 \u0a9b\u0ac7 \u0a85\u0aa8\u0ac7 \u0ab8\u0aae\u0a9c\u0abe\u0ab5\u0ac0 \u0a9b\u0ac7."

    const-string v7, "\u0a89\u0aaa\u0ab0 \u0a9c\u0aa3\u0abe\u0ab5\u0acd\u0aaf\u0abe \u0aae\u0ac1\u0a9c\u0aac \u0aae\u0aa8\u0ac7 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0ab5\u0abf\u0ab6\u0ac7 \u0ab8\u0aae\u0a9c\u0abe\u0ab5\u0ab5\u0abe\u0aae\u0abe\u0a82 \u0a86\u0ab5\u0acd\u0aaf\u0ac1\u0a82 \u0a9b\u0ac7 \u0a85\u0aa8\u0ac7 \u0a86\u0aa5\u0ac0 \u0a89\u0aaa\u0ab0\u0acb\u0a95\u0acd\u0aa4 \u0ab9\u0ac7\u0aa4\u0ac1\u0a93 \u0aae\u0abe\u0a9f\u0ac7 \u0aae\u0abe\u0ab0\u0ac0 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0aaa\u0acd\u0ab0\u0aa6\u0abe\u0aa8 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    .line 163
    :goto_1
    iget-object v8, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 165
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x28

    const/4 v10, 0x0

    .line 166
    invoke-virtual {v8, v10, v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    invoke-direct {v9}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;-><init>()V

    .line 169
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 171
    iget-object v13, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v14, -0x1

    invoke-static {v13, v0, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v13

    const/16 v0, 0x30

    .line 172
    invoke-virtual {v13, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v15, 0x1

    .line 173
    invoke-virtual {v13, v15}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 174
    iget-object v15, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    sget v15, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v13, v15}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 176
    new-instance v15, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v15, v12, v13}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v13, v15}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    iget-object v15, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v15, v2, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v15

    .line 187
    invoke-virtual {v15, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v15, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 189
    invoke-virtual {v15, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v15, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 191
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v15}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v15, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    iget-object v2, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v3, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 200
    invoke-virtual {v3, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v3, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 202
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v3, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    iget-object v2, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v4, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v4

    .line 209
    invoke-virtual {v4, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v4, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 211
    invoke-virtual {v4, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v4, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 213
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    iget-object v2, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v5, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v5

    .line 220
    invoke-virtual {v5, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v5, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 222
    invoke-virtual {v5, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v5, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 224
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v5, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    new-array v14, v0, [Ljava/lang/Object;

    const-string v16, "I"

    aput-object v16, v14, v10

    const/4 v0, 0x1

    aput-object v2, v14, v0

    const/4 v2, 0x2

    aput-object v6, v14, v2

    const-string v6, "%s, %s , %s"

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 231
    iget-object v2, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-static {v2, v14, v0, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v14

    const/16 v0, 0x30

    .line 232
    invoke-virtual {v14, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v0, 0x1

    .line 233
    invoke-virtual {v14, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    const/16 v0, 0x3c

    .line 234
    invoke-virtual {v14, v0, v10, v10, v10}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPadding(IIII)V

    .line 235
    invoke-virtual {v14, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v14, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 237
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v14}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v14, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    iget-object v2, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->beneficiaryName:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v16, v0, v10

    const/4 v10, 0x1

    aput-object v2, v0, v10

    const/4 v2, 0x2

    aput-object v7, v0, v2

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v2, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v2, v0, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v6

    const/16 v0, 0x30

    .line 245
    invoke-virtual {v6, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 246
    invoke-virtual {v6, v10}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    const/16 v0, 0x3c

    .line 247
    invoke-virtual {v6, v0, v7, v7, v7}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPadding(IIII)V

    .line 248
    invoke-virtual {v6, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v6, v0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 250
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v6, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->addAudioView()V

    .line 266
    iget-object v10, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->nextButton:Landroid/widget/Button;

    new-instance v8, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v7, v3

    move-object v3, v14

    move-object v13, v4

    move-object v4, v6

    move-object v14, v5

    move-object v5, v9

    move-object v6, v15

    move-object v15, v8

    move-object v8, v13

    move-object v9, v14

    move-object v13, v10

    move-object v10, v11

    move/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/gson/Gson;I)V

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
