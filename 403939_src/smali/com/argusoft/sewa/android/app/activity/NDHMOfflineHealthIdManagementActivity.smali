.class public Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NDHMOfflineHealthIdManagementActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;


# static fields
.field private static final NDHM_HEALTH_ID_MANAGEMENT_REQUEST_CODE:I = 0x3e8


# instance fields
.field private audioMediaPlayer:Landroid/media/MediaPlayer;

.field private beneficiaryName:Ljava/lang/String;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private fileName:Ljava/lang/String;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isAudioRecording:Z

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

.field private myJson:Ljava/lang/String;

.field private nextButton:Landroid/widget/Button;

.field private recorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->isAudioRecording:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->fileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->myJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->showPopUpWindow(Landroid/view/View;)V

    return-void
.end method

.method private addAudioView()V
    .locals 4

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v1, "field"

    const-string v2, "offline_health_id_consent"

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 313
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 323
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    .line 325
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->health_id_consent_audio_player_layout:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;-><init>(Landroid/content/Context;ILandroid/media/MediaPlayer;Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;)V

    .line 326
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 106
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 107
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->nextButton:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setConsentMessageScreen()V

    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$1(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 182
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$2(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 193
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$3(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 204
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$4(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 215
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$5(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 228
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setConsentMessageScreen$6(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 241
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private showPopUpWindow(Landroid/view/View;)V
    .locals 5

    .line 369
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->ndhm_record_consent_popup_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 375
    new-instance v2, Landroid/widget/PopupWindow;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/16 v1, 0x11

    const/4 v3, 0x0

    .line 376
    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 378
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->popup_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 379
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->mic_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 380
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Landroid/widget/ImageButton;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Landroid/widget/ImageButton;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setConsentMessageScreen$0$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdManagementActivity(Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 167
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 168
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p2, 0x1

    .line 169
    invoke-virtual {p1, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    invoke-virtual {p1, p3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showPopUpWindow$7$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdManagementActivity(Landroid/widget/ImageButton;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 381
    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->isAudioRecording:Z

    if-eqz p3, :cond_0

    .line 382
    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    .line 383
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 384
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    const-string p2, "memberId"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 386
    const-string p2, "nameOfBeneficiary"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "aadharScanned"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "gender"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "mobileNumber"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "dob"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string p2, "AUDIO_FILE"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string p2, "abhaConsentCheckboxModel"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->myJson:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3e8

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$showPopUpWindow$8$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdManagementActivity(Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 3

    .line 0
    const-string p3, "Record_ABHA_CONSENT_"

    .line 397
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->isAudioRecording:Z

    if-nez v0, :cond_1

    const/4 p2, 0x1

    .line 399
    :try_start_0
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->isAudioRecording:Z

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    .line 403
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd.HH.mm.ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".amr"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->fileName:Ljava/lang/String;

    .line 405
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 406
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 407
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 408
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_AUDIO:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 409
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 410
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V

    .line 411
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 412
    const-string p1, "Recording started"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 417
    :cond_1
    sget p3, Lcom/argusoft/sewa/android/app/R$string;->next:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 418
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V

    .line 419
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->reset()V

    .line 420
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    const/4 p2, 0x0

    .line 421
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->recorder:Landroid/media/MediaRecorder;

    .line 422
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 423
    const-string p1, "Audio Recorded successfully"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->isAudioRecording:Z

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 340
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 341
    const-class v0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    const-class v0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    const-string v0, "OfflineHealthIdBean"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setResult(ILandroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->finish()V

    return-void

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 347
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setConsentMessageScreen()V

    return-void
.end method

.method public onCompletion()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 81
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 352
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 361
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->audioMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setContentView(Landroid/view/View;)V

    .line 90
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->finish()V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memberId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->memberId:Ljava/lang/Integer;

    .line 99
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nameOfBeneficiary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "beneficiary"

    :goto_0
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->beneficiaryName:Ljava/lang/String;

    .line 101
    const-string v0, "Create ABHA"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setConsentMessageScreen()V
    .locals 17

    move-object/from16 v11, p0

    .line 116
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 119
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const-string v1, "EN"

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 131
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "I am voluntarily sharing my Aadhaar Number / Virtual ID issued by the Unique Identification Authority of India (\u201cUIDAI\u201d), and my demographic information for the purpose of creating an Ayushman Bharat Health Account number (\u201cABHA number\u201d) and Ayushman Bharat Health Account address (\u201cABHA Address\u201d). I authorize NHA to use my Aadhaar number / Virtual ID for performing Aadhaar based authentication with UIDAI as per the provisions of the Aadhaar (Targeted Delivery of Financial and other Subsidies, Benefits and Services) Act, 2016 for the aforesaid purpose. I understand that UIDAI will share my e-KYC details, or response of \u201cYes\u201d with NHA upon successful authentication."

    const-string v1, "I hereby declare that:"

    const-string v2, "I intend to create Ayushman Bharat Health Account Number (\u201cABHA number\u201d) and Ayushman Bharat Health Account address (\u201cABHA Address\u201d) using document other than Aadhaar. (Click here to proceed further)"

    const-string v3, "I consent to usage of my ABHA address and ABHA number for linking of my legacy (past) government health records and those which will be generated during this encounter."

    const-string v4, "I authorize the sharing of all my health records with healthcare provider(s) for the purpose of providing healthcare services to me during this encounter."

    const-string v5, "I consent to the anonymization and subsequent use of my government health records for public health purposes."

    const-string v6, "confirm that I have duly informed and explained the beneficiary of the contents of consent for aforementioned purposes."

    const-string v7, "have been explained about the consent as stated above and hereby provide my consent for the aforementioned purposes."

    goto :goto_1

    .line 150
    :cond_1
    const-string v0, "\u0aaf\u0ac1\u0aa8\u0abf\u0a95 \u0a86\u0a87\u0aa1\u0ac7\u0aa8\u0acd\u0a9f\u0abf\u0aab\u0abf\u0a95\u0ac7\u0ab6\u0aa8 \u0a93\u0aa5\u0acb\u0ab0\u0abf\u0a9f\u0ac0 \u0a93\u0aab \u0a87\u0aa8\u0acd\u0aa1\u0abf\u0aaf\u0abe (\u201cUIDAI\u201d) \u0aa6\u0acd\u0ab5\u0abe\u0ab0\u0abe \u0a9c\u0abe\u0ab0\u0ac0 \u0a95\u0ab0\u0abe\u0aaf\u0ac7\u0ab2 \u0aae\u0abe\u0ab0\u0acb \u0a86\u0aa7\u0abe\u0ab0 \u0aa8\u0a82\u0aac\u0ab0/\u0ab5\u0ab0\u0acd\u0a9a\u0acd\u0aaf\u0ac1\u0a85\u0ab2 ID \u0a85\u0aa8\u0ac7 \u0aae\u0abe\u0ab0\u0ac0 \u0ab5\u0ab8\u0acd\u0aa4\u0ac0 \u0ab5\u0abf\u0ab7\u0aaf\u0a95 \u0aae\u0abe\u0ab9\u0abf\u0aa4\u0ac0 \u0ab9\u0ac1\u0a82 \u0ab8\u0acd\u0ab5\u0ac7\u0a9a\u0acd\u0a9b\u0abe\u0a8f \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0aa8\u0a82\u0aac\u0ab0 (\u201cABHA \u0aa8\u0a82\u0aac\u0ab0\u201d) \u0a85\u0aa8\u0ac7 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8 (\u201cABHA \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8\u201d) \u0aac\u0aa8\u0abe\u0ab5\u0ab5\u0ac1\u0a82. \u0ab9\u0ac1\u0a82 NHA \u0aa8\u0acb \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a85\u0aa7\u0abf\u0a95\u0ac3\u0aa4 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a86\u0aa7\u0abe\u0ab0\u0aa8\u0ac0 \u0a9c\u0acb\u0a97\u0ab5\u0abe\u0a88\u0a93 \u0a85\u0aa8\u0ac1\u0ab8\u0abe\u0ab0 UIDAI \u0ab8\u0abe\u0aa5\u0ac7 \u0a86\u0aa7\u0abe\u0ab0 \u0a86\u0aa7\u0abe\u0ab0\u0abf\u0aa4 \u0aaa\u0acd\u0ab0\u0aae\u0abe\u0aa3\u0ac0\u0a95\u0ab0\u0aa3 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a86\u0aa7\u0abe\u0ab0 \u0aa8\u0a82\u0aac\u0ab0 / \u0ab5\u0ab0\u0acd\u0a9a\u0acd\u0aaf\u0ac1\u0a85\u0ab2 \u0a86\u0a88\u0aa1\u0ac0 (\u0aa8\u0abe\u0aa3\u0abe\u0a95\u0ac0\u0aaf \u0a85\u0aa8\u0ac7 \u0a85\u0aa8\u0acd\u0aaf \u0ab8\u0aac\u0ab8\u0abf\u0aa1\u0ac0\u0aa8\u0ac0 \u0ab2\u0a95\u0acd\u0ab7\u0abf\u0aa4 \u0aa1\u0abf\u0ab2\u0abf\u0ab5\u0ab0\u0ac0, \u0a89\u0aaa\u0ab0\u0acb\u0a95\u0acd\u0aa4 \u0ab9\u0ac7\u0aa4\u0ac1 \u0aae\u0abe\u0a9f\u0ac7 \u0ab2\u0abe\u0aad\u0acb \u0a85\u0aa8\u0ac7 \u0ab8\u0ac7\u0ab5\u0abe\u0a93) \u0a85\u0aa7\u0abf\u0aa8\u0abf\u0aaf\u0aae, 2016. \u0ab9\u0ac1\u0a82 \u0ab8\u0aae\u0a9c\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 UIDAI \u0aae\u0abe\u0ab0\u0ac0 \u0a87-\u0a95\u0ac7\u0ab5\u0abe\u0aaf\u0ab8\u0ac0 \u0ab5\u0abf\u0a97\u0aa4\u0acb \u0a85\u0aa5\u0ab5\u0abe \u0ab8\u0aab\u0ab3 \u0aaa\u0acd\u0ab0\u0aae\u0abe\u0aa3\u0ac0\u0a95\u0ab0\u0aa3 \u0aaa\u0ab0 NHA \u0ab8\u0abe\u0aa5\u0ac7 \u201c\u0ab9\u0abe\u201d \u0aa8\u0acb \u0aaa\u0acd\u0ab0\u0aa4\u0abf\u0ab8\u0abe\u0aa6 \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ab6\u0ac7."

    const-string v1, "\u0ab9\u0ac1\u0a82 \u0a86\u0aa5\u0ac0 \u0a9c\u0abe\u0ab9\u0ac7\u0ab0 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7:"

    const-string v2, "\u0ab9\u0ac1\u0a82 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0aa8\u0a82\u0aac\u0ab0 (\u201cABHA \u0aa8\u0a82\u0aac\u0ab0\u201d) \u0a85\u0aa8\u0ac7 \u0a86\u0aaf\u0ac1\u0ab7\u0acd\u0aae\u0abe\u0aa8 \u0aad\u0abe\u0ab0\u0aa4 \u0ab9\u0ac7\u0ab2\u0acd\u0aa5 \u0a8f\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8 (\u201cABHA \u0a8f\u0aa1\u0acd\u0ab0\u0ac7\u0ab8\u201d) \u0ab8\u0abf\u0ab5\u0abe\u0aaf\u0aa8\u0abe \u0a85\u0aa8\u0acd\u0aaf \u0aa6\u0ab8\u0acd\u0aa4\u0abe\u0ab5\u0ac7\u0a9c\u0acb\u0aa8\u0acb \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0a95\u0ab0\u0ac0\u0aa8\u0ac7 \u0aac\u0aa8\u0abe\u0ab5\u0ab5\u0abe \u0aae\u0abe\u0a97\u0ac1\u0a82 \u0a9b\u0ac1\u0a82. \u0a86\u0aa7\u0abe\u0ab0. (\u0ab5\u0aa7\u0ac1 \u0a86\u0a97\u0ab3 \u0ab5\u0aa7\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a85\u0ab9\u0ac0\u0a82 \u0a95\u0acd\u0ab2\u0abf\u0a95 \u0a95\u0ab0\u0acb)"

    const-string v3, "\u0ab9\u0ac1\u0a82 \u0aae\u0abe\u0ab0\u0abe \u0ab2\u0ac7\u0a97\u0ab8\u0ac0 (\u0aad\u0ac2\u0aa4\u0a95\u0abe\u0ab3\u0aa8\u0abe) \u0ab8\u0ab0\u0a95\u0abe\u0ab0\u0ac0 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac7\u0a95\u0acb\u0ab0\u0acd\u0aa1 \u0a85\u0aa8\u0ac7 \u0a86 \u0a8f\u0aa8\u0acd\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f\u0ab0 \u0aa6\u0ab0\u0aae\u0abf\u0aaf\u0abe\u0aa8 \u0a9c\u0ac7 \u0a9c\u0aa8\u0ab0\u0ac7\u0a9f \u0aa5\u0ab6\u0ac7 \u0aa4\u0ac7\u0aa8\u0ac7 \u0ab2\u0abf\u0a82\u0a95 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0aae\u0abe\u0ab0\u0abe ABHA \u0ab8\u0ab0\u0aa8\u0abe\u0aae\u0ac1\u0a82 \u0a85\u0aa8\u0ac7 ABHA \u0aa8\u0a82\u0aac\u0ab0\u0aa8\u0acb \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0a95\u0ab0\u0ab5\u0abe\u0aa8\u0ac0 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0a86\u0aaa\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    const-string v4, "\u0a86 \u0a8f\u0aa8\u0acd\u0a95\u0abe\u0a89\u0aa8\u0acd\u0a9f\u0ab0 \u0aa6\u0ab0\u0aae\u0abf\u0aaf\u0abe\u0aa8 \u0aae\u0aa8\u0ac7 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf\u0ab8\u0a82\u0aad\u0abe\u0ab3 \u0ab8\u0ac7\u0ab5\u0abe\u0a93 \u0aaa\u0ac2\u0ab0\u0ac0 \u0aaa\u0abe\u0aa1\u0ab5\u0abe\u0aa8\u0abe \u0ab9\u0ac7\u0aa4\u0ac1\u0aa5\u0ac0 \u0ab9\u0ac1\u0a82 \u0aae\u0abe\u0ab0\u0abe \u0aa4\u0aae\u0abe\u0aae \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac7\u0a95\u0acb\u0ab0\u0acd\u0aa1\u0aa8\u0ac7 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf\u0ab8\u0a82\u0aad\u0abe\u0ab3 \u0aaa\u0acd\u0ab0\u0aa6\u0abe\u0aa4\u0abe(\u0a93) \u0ab8\u0abe\u0aa5\u0ac7 \u0ab6\u0ac7\u0ab0 \u0a95\u0ab0\u0ab5\u0abe \u0aae\u0abe\u0a9f\u0ac7 \u0a85\u0aa7\u0abf\u0a95\u0ac3\u0aa4 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    const-string v5, "\u0ab9\u0ac1\u0a82 \u0a9c\u0abe\u0ab9\u0ac7\u0ab0 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab9\u0ac7\u0aa4\u0ac1\u0a93 \u0aae\u0abe\u0a9f\u0ac7 \u0aae\u0abe\u0ab0\u0abe \u0ab8\u0ab0\u0a95\u0abe\u0ab0\u0ac0 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac7\u0a95\u0acb\u0ab0\u0acd\u0aa1\u0aa8\u0abe \u0a85\u0aa8\u0abe\u0aae\u0ac0\u0a95\u0ab0\u0aa3 \u0a85\u0aa8\u0ac7 \u0a85\u0aa8\u0ac1\u0a97\u0abe\u0aae\u0ac0 \u0a89\u0aaa\u0aaf\u0acb\u0a97 \u0aae\u0abe\u0a9f\u0ac7 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0a86\u0aaa\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    const-string v6, "\u0aaa\u0ac1\u0ab7\u0acd\u0a9f\u0abf \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82 \u0a95\u0ac7 \u0aae\u0ac7\u0a82 \u0a89\u0aaa\u0ab0\u0acb\u0a95\u0acd\u0aa4 \u0ab9\u0ac7\u0aa4\u0ac1\u0a93 \u0aae\u0abe\u0a9f\u0ac7 \u0ab8\u0a82\u0aae\u0aa4\u0abf\u0aa8\u0ac0 \u0ab8\u0abe\u0aae\u0a97\u0acd\u0ab0\u0ac0\u0aa8\u0abe \u0ab2\u0abe\u0aad\u0abe\u0ab0\u0acd\u0aa5\u0ac0\u0aa8\u0ac7 \u0aaf\u0acb\u0a97\u0acd\u0aaf \u0ab0\u0ac0\u0aa4\u0ac7 \u0a9c\u0abe\u0aa3 \u0a95\u0ab0\u0ac0 \u0a9b\u0ac7 \u0a85\u0aa8\u0ac7 \u0ab8\u0aae\u0a9c\u0abe\u0ab5\u0ac0 \u0a9b\u0ac7."

    const-string v7, "\u0a89\u0aaa\u0ab0 \u0a9c\u0aa3\u0abe\u0ab5\u0acd\u0aaf\u0abe \u0aae\u0ac1\u0a9c\u0aac \u0aae\u0aa8\u0ac7 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0ab5\u0abf\u0ab6\u0ac7 \u0ab8\u0aae\u0a9c\u0abe\u0ab5\u0ab5\u0abe\u0aae\u0abe\u0a82 \u0a86\u0ab5\u0acd\u0aaf\u0ac1\u0a82 \u0a9b\u0ac7 \u0a85\u0aa8\u0ac7 \u0a86\u0aa5\u0ac0 \u0a89\u0aaa\u0ab0\u0acb\u0a95\u0acd\u0aa4 \u0ab9\u0ac7\u0aa4\u0ac1\u0a93 \u0aae\u0abe\u0a9f\u0ac7 \u0aae\u0abe\u0ab0\u0ac0 \u0ab8\u0a82\u0aae\u0aa4\u0abf \u0aaa\u0acd\u0ab0\u0aa6\u0abe\u0aa8 \u0a95\u0ab0\u0ac1\u0a82 \u0a9b\u0ac1\u0a82."

    .line 153
    :goto_1
    iget-object v8, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 155
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x28

    const/4 v10, 0x0

    .line 156
    invoke-virtual {v8, v10, v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    invoke-direct {v9}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;-><init>()V

    .line 159
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 161
    iget-object v13, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v14, -0x1

    invoke-static {v13, v0, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v13

    const/16 v0, 0x30

    .line 162
    invoke-virtual {v13, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v15, 0x1

    .line 163
    invoke-virtual {v13, v15}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 164
    iget-object v15, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    sget v15, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v13, v15}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 166
    new-instance v15, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda2;

    invoke-direct {v15, v11, v13}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v13, v15}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v15, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v15, v2, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v15

    .line 177
    invoke-virtual {v15, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 178
    invoke-virtual {v15, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 179
    invoke-virtual {v15, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v15, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 181
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v15}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v15, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    iget-object v2, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v3

    .line 188
    invoke-virtual {v3, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v3, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 190
    invoke-virtual {v3, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v3, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 192
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v3, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    iget-object v2, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v4, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v4

    .line 199
    invoke-virtual {v4, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v4, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 201
    invoke-virtual {v4, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v4, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 203
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v4}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    iget-object v2, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v5, v14, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v5

    .line 210
    invoke-virtual {v5, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v5, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 212
    invoke-virtual {v5, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v5, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 214
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v5}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v5, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
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

    .line 221
    iget-object v2, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-static {v2, v14, v0, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v14

    const/16 v0, 0x30

    .line 222
    invoke-virtual {v14, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    const/4 v0, 0x1

    .line 223
    invoke-virtual {v14, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    const/16 v0, 0x3c

    .line 224
    invoke-virtual {v14, v0, v10, v10, v10}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPadding(IIII)V

    .line 225
    invoke-virtual {v14, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v14, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 227
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v14}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v14, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    iget-object v2, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->beneficiaryName:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v16, v0, v10

    const/4 v10, 0x1

    aput-object v2, v0, v10

    const/4 v2, 0x2

    aput-object v7, v0, v2

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v2, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->context:Landroid/content/Context;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v2, v0, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v6

    const/16 v0, 0x30

    .line 235
    invoke-virtual {v6, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 236
    invoke-virtual {v6, v10}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    const/16 v0, 0x3c

    .line 237
    invoke-virtual {v6, v0, v7, v7, v7}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPadding(IIII)V

    .line 238
    invoke-virtual {v6, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleViewCheckBoxText:I

    invoke-static {v6, v0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 240
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, v6}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v6, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v0, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->addAudioView()V

    .line 255
    iget-object v10, v11, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->nextButton:Landroid/widget/Button;

    new-instance v8, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v7, v3

    move-object v3, v9

    move-object v9, v4

    move-object v4, v15

    move-object v13, v5

    move-object v5, v7

    move-object v15, v6

    move-object v6, v9

    move-object v7, v13

    move-object v13, v8

    move-object v8, v14

    move-object v9, v15

    move-object v14, v10

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/gson/Gson;)V

    invoke-virtual {v14, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
