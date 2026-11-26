.class public Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RaiseHelpActivity.java"


# static fields
.field private static final MAX_PHOTOS:I = 0x5

.field private static final MIC_REQUEST:I = 0x1005

.field private static final MIN_NOTE:I = 0x3

.field private static final PICK_PHOTO:I = 0x1007


# instance fields
.field private final clock:Landroid/os/Handler;

.field private halo:Landroid/view/View;

.field private lengthView:Landroid/widget/TextView;

.field private note:Landroid/widget/EditText;

.field private photoRow:Landroid/widget/LinearLayout;

.field private final photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private play:Landroid/widget/ImageButton;

.field private final playTick:Ljava/lang/Runnable;

.field private recButton:Landroid/widget/ImageButton;

.field private recHint:Landroid/widget/TextView;

.field private recTitle:Landroid/widget/TextView;

.field private recordingStartedAt:J

.field private send:Lcom/google/android/material/button/MaterialButton;

.field private sending:Z

.field store:Lcom/argusoft/sewa/android/app/support/SupportStore;

.field private final tick:Ljava/lang/Runnable;

.field private voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;


# direct methods
.method public static synthetic $r8$lambda$eOeZQBI-1vJ9E677vgmvFiswrM8(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showPlayState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->tick:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->playTick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recordingStartedAt:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->lengthView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showSendState()V

    return-void
.end method

.method private hasReport()Z
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onSend()V
    .locals 8

    .line 424
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->sending:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->hasReport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->owner()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    .line 429
    const-string v0, "login_again"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    move-object v4, v7

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/support/SupportStore;->saveNewTicket(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->handOver()V

    const/4 v1, 0x1

    .line 443
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->sending:Z

    .line 444
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 445
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "sending"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->sendNow(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    goto :goto_1

    .line 451
    :cond_3
    invoke-virtual {p0, v7}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->afterSend(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 439
    :catch_0
    const-string v0, "could_not"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private owner()Ljava/lang/Long;
    .locals 1

    .line 486
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private pickPhoto()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 322
    const-string v0, "too_many_photos"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    :try_start_0
    const-string v1, "photo"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1007

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    const-string v0, "could_not"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showPhotos()V
    .locals 9

    .line 360
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42980000    # 76.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 362
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 364
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 365
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41000000    # 8.0f

    mul-float v7, v7, v0

    float-to-int v7, v7

    .line 366
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 367
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 370
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 371
    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/support/SupportPhotos;->thumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 372
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 374
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v7, 0x41400000    # 12.0f

    mul-float v7, v7, v0

    .line 375
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 376
    sget v7, Lcom/argusoft/sewa/android/app/R$color;->support_line:I

    invoke-static {p0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 377
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 381
    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_close:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 382
    sget v6, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 383
    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->support_red_circle:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v0

    float-to-int v6, v6

    .line 385
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 386
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 387
    const-string v7, "remove_photo"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x41d00000    # 26.0f

    mul-float v8, v8, v0

    float-to-int v8, v8

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800035

    .line 389
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 390
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 391
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 392
    invoke-virtual {v5, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v3}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;Ljava/io/File;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 401
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->photo_strip:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->choice_photo:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 403
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->choice_photo_text:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "photo"

    if-eqz v1, :cond_2

    .line 404
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 405
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPlayState()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isPlaying()Z

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->play:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_stop:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_play:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 309
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->play:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const-string v2, "tap_to_stop"

    goto :goto_1

    :cond_1
    const-string v2, "listen"

    :goto_1
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->playTick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->playTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->lengthView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private showRecordState()V
    .locals 10

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 265
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 266
    :goto_0
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->rec_mic_area:I

    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    const/16 v6, 0x8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->rec_done:I

    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 269
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_recording:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 270
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_stop:I

    goto :goto_2

    :cond_3
    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_mic:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 271
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 272
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->halo:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 273
    sget v6, Lcom/argusoft/sewa/android/app/R$color;->support_recording_bg:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 272
    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 274
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recButton:Landroid/widget/ImageButton;

    const-string v6, "tap_to_stop"

    const-string v7, "tap_and_speak"

    if-eqz v0, :cond_6

    move-object v8, v6

    goto :goto_4

    :cond_6
    move-object v8, v7

    :goto_4
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_7

    .line 276
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recTitle:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recording_short"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recHint:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 280
    :cond_7
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recTitle:Landroid/widget/TextView;

    sget v5, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recHint:Landroid/widget/TextView;

    const-string v5, "use_own_language"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v3, :cond_8

    .line 285
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->lengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz v0, :cond_9

    const v3, 0x3ee66666    # 0.45f

    goto :goto_6

    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 289
    :goto_6
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->choice_photo:I

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->choice_write:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    :goto_7
    const/4 v5, 0x2

    if-ge v2, v5, :cond_a

    aget v5, v4, v2

    .line 290
    invoke-virtual {p0, v5}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 291
    invoke-virtual {p0, v5}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 293
    :cond_a
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showSendState()V

    return-void
.end method

.method private showSendState()V
    .locals 2

    .line 416
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->sending:Z

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->hasReport()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "stop_to_send"

    goto :goto_1

    :cond_2
    const-string v1, "send"

    :goto_1
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startRecording()V
    .locals 2

    .line 230
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1005

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recordingStartedAt:J

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "could_not"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showRecordState()V

    return-void
.end method

.method private stopRecording()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stop()Z

    .line 246
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showRecordState()V

    return-void
.end method

.method private text(ILjava/lang/String;)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private togglePlay()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->play()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    const-string v0, "could_not"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showPlayState()V

    return-void
.end method


# virtual methods
.method afterSend(Ljava/lang/String;)V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ticket_raised"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->finish()V

    return-void

    .line 478
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "saved_press_sync"

    .line 479
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    .line 481
    const-string v1, "OK"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$afterSend$9$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 481
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->stopRecording()V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->startRecording()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->togglePlay()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->togglePlay()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-argusoft-sewa-android-app-activity-RaiseHelpActivity()V
    .locals 1

    .line 151
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->discard()V

    .line 154
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showPlayState()V

    .line 155
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->startRecording()V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->pickPhoto()V

    return-void
.end method

.method synthetic lambda$onCreate$6$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 161
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->choice_write:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 162
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method synthetic lambda$onCreate$7$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->onSend()V

    return-void
.end method

.method synthetic lambda$showPhotos$8$com-argusoft-sewa-android-app-activity-RaiseHelpActivity(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 394
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 397
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showPhotos()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 337
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1007

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 338
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->takePhoto(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_raise_help:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->setContentView(I)V

    .line 116
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 117
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    const-string p1, "raise"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->setTitle(Ljava/lang/String;)V

    .line 120
    new-instance p1, Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    .line 121
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_halo:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->halo:Landroid/view/View;

    .line 122
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_button:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recButton:Landroid/widget/ImageButton;

    .line 123
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_title:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recTitle:Landroid/widget/TextView;

    .line 124
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_hint:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recHint:Landroid/widget/TextView;

    .line 125
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_play:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->play:Landroid/widget/ImageButton;

    .line 126
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_length:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->lengthView:Landroid/widget/TextView;

    .line 127
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->raise_note:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    .line 128
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->photo_row:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photoRow:Landroid/widget/LinearLayout;

    .line 129
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->raise_send:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    .line 131
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->raise_question:I

    const-string v0, "what_is_problem"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 132
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_done_title:I

    const-string v0, "recording_ready"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 133
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_player_title:I

    const-string v0, "play_recording"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 134
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->raise_also:I

    const-string v0, "also_add"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 135
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->choice_photo_text:I

    const-string v0, "photo"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 136
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->choice_write_text:I

    const-string v0, "write"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 137
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->raise_privacy:I

    const-string v0, "privacy_short"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->text(ILjava/lang/String;)V

    .line 138
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_again:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const-string v0, "record_again"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "send"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    const-string v0, "write_here"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->recButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->play:Landroid/widget/ImageButton;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_player:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->setPlaybackListener(Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;)V

    .line 152
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->rec_again:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->choice_photo:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->choice_write:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->note:Landroid/widget/EditText;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->send:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showRecordState()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->clock:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->sending:Z

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->discard()V

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 224
    :cond_0
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->stopRecording()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    .line 201
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showPlayState()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x1005

    if-eq p1, p2, :cond_0

    return-void

    .line 255
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->startRecording()V

    goto :goto_0

    .line 258
    :cond_1
    const-string p1, "mic_permission"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 190
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 191
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->resumeActivity()V

    return-void
.end method

.method photoTaken(Ljava/io/File;)V
    .locals 1

    if-nez p1, :cond_0

    .line 352
    const-string p1, "could_not"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->showPhotos()V

    return-void
.end method

.method sendNow(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pushTicket(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 463
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->afterSend(Ljava/lang/String;)V

    return-void
.end method

.method takePhoto(Landroid/net/Uri;)V
    .locals 0

    .line 346
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportPhotos;->copy(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->photoTaken(Ljava/io/File;)V

    return-void
.end method
