.class public Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "SupportTicketActivity.java"


# static fields
.field public static final EXTRA_LOCAL_ID:Ljava/lang/String; = "support_ticket_local_id"

.field private static final MIC_REQUEST:I = 0x1006

.field private static final REPORT_KEY:Ljava/lang/String; = "report"

.field private static final REPORT_WINDOW_MS:J = 0x1d4c0L

.field private static final VOICE_REPLY_BODY:Ljava/lang/String; = "Replied with a voice note."


# instance fields
.field private audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

.field private busy:Z

.field private final clock:Landroid/os/Handler;

.field private localId:I

.field private messages:Landroid/widget/LinearLayout;

.field private mic:Landroid/widget/ImageButton;

.field private final playButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private final playLengths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final playTick:Ljava/lang/Runnable;

.field private final playTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private playingKey:Ljava/lang/String;

.field private final recordTick:Ljava/lang/Runnable;

.field private recordingStartedAt:J

.field private refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private reply:Landroid/widget/EditText;

.field private send:Landroid/view/View;

.field store:Lcom/argusoft/sewa/android/app/support/SupportStore;

.field private voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;


# direct methods
.method public static synthetic $r8$lambda$58od5c8rDdjNtUMrPIQ7b4cNR6Y(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->syncNow()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playButtons:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTimes:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playLengths:Ljava/util/Map;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->recordTick:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->recordingStartedAt:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Landroid/os/Handler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playingKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Ljava/util/Map;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTimes:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Lcom/argusoft/sewa/android/app/support/SupportAudio;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    return-void
.end method

.method private answer(ZLjava/lang/String;)V
    .locals 3

    .line 999
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    if-eqz v0, :cond_0

    return-void

    .line 1004
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->owner()Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->saveAnswer(Ljava/lang/Long;IZLjava/lang/String;)Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1010
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    .line 1011
    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V

    goto :goto_0

    .line 1013
    :cond_1
    const-string p1, "answer_waiting"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1014
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    :goto_0
    return-void

    .line 1006
    :catch_0
    const-string p1, "could_not"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private askWhyNotFixed()V
    .locals 5

    .line 980
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 981
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 982
    const-string v2, "why_not_fixed"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 983
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMinLines(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 984
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 985
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    const/4 v4, 0x0

    .line 987
    invoke-virtual {v2, v3, v0, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 988
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 989
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "not_fixed"

    .line 990
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 991
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "cancel"

    .line 992
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "send"

    .line 993
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private bindPlayer(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Ljava/io/File;Ljava/lang/Integer;Landroid/widget/ImageButton;Landroid/widget/TextView;)V
    .locals 7

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playButtons:Ljava/util/Map;

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTimes:Ljava/util/Map;

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    mul-int/lit16 p5, p5, 0x3e8

    .line 703
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playLengths:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v0, "listen"

    if-lez p5, :cond_1

    int-to-long v1, p5

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-virtual {p7, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    sget p5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_play:I

    invoke-virtual {p6, p5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 706
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 707
    new-instance p5, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda3;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;Ljava/lang/String;Ljava/io/File;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/TextView;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-virtual {p6, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private box(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 562
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 563
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v2, v2, v0

    .line 564
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 565
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->tint(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v0, v2

    float-to-int v0, v0

    const v2, 0xffffff

    and-int/2addr p1, v2

    const/high16 v2, 0x66000000

    or-int/2addr p1, v2

    .line 566
    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v1
.end method

.method private bubble(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Landroid/view/View;
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v3, p3

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 595
    const-string v0, "SYNCED"

    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 596
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 597
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 599
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, v10

    float-to-int v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, v10

    float-to-int v14, v2

    .line 601
    invoke-virtual {v13, v1, v14, v1, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 602
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 603
    iget-boolean v4, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_bubble_mine:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_bubble_theirs:I

    :goto_0
    invoke-static {v8, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v15, v10, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v7, v10, v5

    .line 606
    iget-boolean v5, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v4, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 607
    new-array v4, v4, [F

    aput v15, v4, v6

    aput v15, v4, v0

    aput v7, v4, v20

    aput v7, v4, v19

    aput v15, v4, v18

    aput v15, v4, v17

    aput v15, v4, v16

    const/4 v5, 0x7

    aput v15, v4, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x7

    .line 608
    new-array v4, v4, [F

    aput v7, v4, v6

    aput v7, v4, v0

    aput v15, v4, v20

    aput v15, v4, v19

    aput v15, v4, v18

    aput v15, v4, v17

    aput v15, v4, v16

    aput v15, v4, v5

    .line 606
    :goto_1
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 609
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 611
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    if-eqz v5, :cond_2

    const-string v5, "you"

    goto :goto_2

    :cond_2
    const-string v5, "support"

    :goto_2
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  \u00b7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    .line 613
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->dayAndTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 614
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 615
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {v8, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 616
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 618
    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v4, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v4, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 619
    :goto_3
    const-string v2, "voice_note"

    const/high16 v17, 0x40c00000    # 6.0f

    const/high16 v18, 0x42400000    # 48.0f

    if-nez v4, :cond_6

    if-eqz v3, :cond_4

    goto :goto_5

    .line 649
    :cond_4
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 650
    const-string v1, "Replied with a voice note."

    iget-object v3, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->body:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->body:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41880000    # 17.0f

    .line 651
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 652
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {v8, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    float-to-int v1, v7

    .line 653
    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 654
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v23, v7

    move/from16 v16, v14

    const/4 v14, 0x0

    goto/16 :goto_8

    .line 620
    :cond_6
    :goto_5
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 622
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    mul-float v0, v10, v17

    float-to-int v0, v0

    const/high16 v21, 0x41000000    # 8.0f

    move/from16 v22, v7

    mul-float v7, v10, v21

    float-to-int v7, v7

    .line 623
    invoke-virtual {v5, v6, v0, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 624
    new-instance v7, Landroid/widget/ImageButton;

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 625
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->support_mic_circle:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 626
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v8, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 627
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 629
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 630
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v6, v10, v18

    float-to-int v6, v6

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 632
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x0

    .line 633
    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 634
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 635
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 636
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 637
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 638
    sget v2, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {v8, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 640
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 641
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 642
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {v8, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    const-string v1, "local_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_7
    const-string v1, "att_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->serverId:Ljava/lang/Long;

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-nez v3, :cond_8

    const/4 v5, 0x0

    goto :goto_7

    .line 647
    :cond_8
    iget-object v0, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->durationSeconds:Ljava/lang/Integer;

    move-object v5, v0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v16, v14

    const/high16 v14, 0x41500000    # 13.0f

    move-object/from16 v19, v6

    const/4 v14, 0x0

    move-object v6, v7

    move/from16 v23, v22

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->bindPlayer(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Ljava/io/File;Ljava/lang/Integer;Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    .line 656
    :goto_8
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v11, :cond_a

    .line 660
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 661
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800015

    .line 662
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    move/from16 v5, v23

    float-to-int v1, v5

    .line 663
    invoke-virtual {v0, v14, v1, v1, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 664
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    invoke-static {v8, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 665
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 666
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_wait:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 667
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 668
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v15

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 670
    const-string v3, "FAILED"

    iget-object v4, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncError:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 671
    iget-object v3, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncError:Ljava/lang/String;

    goto :goto_9

    :cond_9
    const-string v3, "waiting_for_sync"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 672
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 673
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    mul-float v1, v10, v17

    float-to-int v1, v1

    .line 674
    invoke-virtual {v2, v1, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 675
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    :cond_a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 681
    iget-boolean v1, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    if-eqz v1, :cond_b

    const v1, 0x800005

    goto :goto_a

    :cond_b
    const v1, 0x800003

    :goto_a
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v1, v16

    .line 682
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 683
    iget-boolean v1, v9, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    if-eqz v1, :cond_c

    mul-float v10, v10, v18

    float-to-int v1, v10

    .line 684
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_b

    :cond_c
    mul-float v10, v10, v18

    float-to-int v1, v10

    .line 686
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 688
    :goto_b
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v12
.end method

.method private callout(IZIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 542
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 543
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    return-void

    .line 547
    :cond_1
    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 548
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->box(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 549
    check-cast p1, Landroid/widget/LinearLayout;

    .line 550
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 551
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p3, 0x1

    .line 553
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 554
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 555
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private cancelRecording()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->recordTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->discard()V

    .line 880
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    return-void
.end method

.method private detail(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 454
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 455
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    if-lez v1, :cond_0

    .line 456
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 457
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_line:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 458
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float v5, v0, v3

    float-to-int v5, v5

    .line 459
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 460
    invoke-virtual {p1, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 463
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 464
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    mul-float v5, v0, v3

    float-to-int v5, v5

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v0, v0, v6

    float-to-int v0, v0

    .line 465
    invoke-virtual {v1, v5, v0, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 466
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 467
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 469
    sget p2, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {p2, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 472
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 474
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 475
    sget p3, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x800005

    .line 476
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 477
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const v0, 0x3fb33333    # 1.4f

    invoke-direct {p3, v4, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$scrollDown$12(Landroid/widget/ScrollView;)V
    .locals 1

    const/16 v0, 0x82

    .line 973
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method static synthetic lambda$showPhoto$11(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 838
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private nearest(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;"
        }
    .end annotation

    .line 575
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v0

    .line 578
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const-wide v2, 0x7fffffffffffffffL

    move-object v4, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    .line 579
    iget-object v6, v5, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->createdAt:Ljava/lang/String;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 580
    iget-object v8, v5, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->serverId:Ljava/lang/Long;

    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    move-object v4, v5

    move-wide v2, v6

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const-wide/32 v0, 0x1d4c0

    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    .line 586
    iget-object p1, v4, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->serverId:Ljava/lang/Long;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_2
    return-object p2
.end method

.method private noReplies()Landroid/view/View;
    .locals 8

    .line 483
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 484
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 485
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 486
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 487
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->support_card:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    .line 488
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 489
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 490
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_chat:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    sget v5, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 492
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float v6, v6, v0

    float-to-int v6, v6

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 494
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v6, v6, v0

    float-to-int v6, v6

    .line 495
    invoke-virtual {v4, v6, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 496
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 497
    const-string v7, "no_reply"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 498
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 499
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 500
    sget v5, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 503
    const-string v6, "no_reply_hint"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 505
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 506
    invoke-virtual {v5, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 507
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 508
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private onMic()V
    .locals 2

    .line 849
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    if-eqz v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->recordTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 854
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file()Ljava/io/File;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->handOver()V

    const/4 v1, 0x0

    .line 857
    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->saveAndSendReply(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 859
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    :goto_0
    return-void

    .line 863
    :cond_2
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 864
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    .line 868
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->start()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->recordingStartedAt:J

    .line 870
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->recordTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 872
    :cond_4
    const-string v0, "could_not"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    return-void
.end method

.method private onPlaying(Ljava/lang/String;)V
    .locals 6

    .line 753
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playingKey:Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 755
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 756
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 757
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_stop:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_play:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 758
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const-string v4, "listen"

    if-eqz v2, :cond_2

    const-string v5, "tap_to_stop"

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_0

    .line 760
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 761
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playLengths:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    .line 763
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 768
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private onSendText()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 919
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 922
    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->saveAndSendReply(Ljava/lang/String;Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private owner()Ljava/lang/Long;
    .locals 1

    .line 245
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

.method private render()V
    .locals 22

    move-object/from16 v8, p0

    .line 309
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-nez v9, :cond_0

    .line 311
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_loading:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 312
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_error:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    const-string v1, "could_not"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 317
    :cond_0
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments(I)Ljava/util/List;

    move-result-object v12

    .line 318
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments(I)Ljava/util/List;

    move-result-object v7

    .line 319
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pendingAction(I)Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    move-result-object v0

    const/4 v13, 0x1

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    .line 321
    :goto_0
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_loading:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 322
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_error:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 323
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_content:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    .line 325
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 327
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playLengths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 329
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v15

    if-nez v15, :cond_2

    .line 330
    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->notSent()Lcom/argusoft/sewa/android/app/support/SupportStatus;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->of(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportStatus;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 331
    iget v0, v6, Lcom/argusoft/sewa/android/app/support/SupportStatus;->color:I

    invoke-static {v8, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 334
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->head_tag:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 335
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 336
    invoke-virtual {v6, v8}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->tag(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->ticket_title:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->ticket_meta:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    iget-object v3, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    const-string v16, ""

    if-nez v3, :cond_3

    move-object/from16 v3, v16

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  \u00b7  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->dayAndTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->head_detail:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/support/SupportStatus;->detail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->head_divider:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v15, :cond_5

    iget v2, v6, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v15, :cond_6

    .line 343
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_track:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 345
    :cond_6
    invoke-direct {v8, v6, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showTrack(Lcom/argusoft/sewa/android/app/support/SupportStatus;I)V

    .line 349
    :goto_5
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->note_pending:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v15, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    const/16 v1, 0x8

    .line 350
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v15, :cond_8

    .line 352
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    invoke-static {v8, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 353
    invoke-direct {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->box(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->note_pending_icon:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 355
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->note_pending_sync:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 357
    :cond_8
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->note_ask:I

    if-eqz v15, :cond_9

    const-string v0, "AWAITING_INFORMATION"

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_question:I

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    const-string v0, "status_answer"

    .line 358
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "support_asks"

    .line 359
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v10, v6

    move-object/from16 v6, v17

    .line 357
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->callout(IZIILjava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->resolutionSummary:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->resolutionSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    if-eqz v15, :cond_b

    .line 361
    iget v0, v10, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    if-nez v0, :cond_b

    const/16 v17, 0x1

    goto :goto_9

    :cond_b
    const/16 v17, 0x0

    :goto_9
    if-eqz v14, :cond_c

    .line 363
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->note_fixed:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_wait:I

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    const-string v0, "not_yet_sent"

    .line 364
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "answer_waiting"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    .line 363
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->callout(IZIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 366
    :cond_c
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->note_fixed:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_check_circle:I

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_success:I

    const-string v0, "how_fixed"

    .line 367
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_d

    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->resolutionSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_a

    :cond_d
    move-object/from16 v6, v16

    :goto_a
    move-object/from16 v0, p0

    .line 366
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->callout(IZIILjava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_b
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->note_closed:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_close:I

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_default:I

    iget-object v5, v10, Lcom/argusoft/sewa/android/app/support/SupportStatus;->label:Ljava/lang/String;

    const-string v0, "not_taken_note"

    .line 370
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v2, v17

    .line 369
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->callout(IZIILjava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v0

    .line 376
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v17, 0x0

    move-object/from16 v3, v17

    :cond_e
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    .line 379
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->isImage()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 380
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 381
    :cond_f
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->isVoice()Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v3, :cond_10

    .line 382
    iget-object v7, v4, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->createdAt:Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v18, v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0x1d4c0

    cmp-long v7, v18, v20

    if-gez v7, :cond_10

    move-object v3, v4

    goto :goto_c

    .line 385
    :cond_10
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 389
    :cond_11
    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_d

    :cond_12
    move-object/from16 v4, v17

    .line 390
    :goto_d
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_voice:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_14

    if-eqz v3, :cond_13

    goto :goto_e

    :cond_13
    const/16 v18, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    const/16 v18, 0x1

    :goto_f
    if-eqz v18, :cond_15

    const/4 v1, 0x0

    goto :goto_10

    :cond_15
    const/16 v1, 0x8

    .line 392
    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_16

    .line 394
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_play:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_voice_time:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    const-string v1, "report"

    const/4 v3, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v2, v9

    move-object/from16 v21, v5

    move-object/from16 v5, v20

    move-object v11, v6

    move-object v6, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->bindPlayer(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Ljava/io/File;Ljava/lang/Integer;Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    goto :goto_11

    :cond_16
    move-object/from16 v21, v5

    move-object v11, v6

    if-eqz v3, :cond_17

    .line 396
    iget-object v5, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->durationSeconds:Ljava/lang/Integer;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_play:I

    .line 397
    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_voice_time:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 396
    const-string v1, "report"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->bindPlayer(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Ljava/io/File;Ljava/lang/Integer;Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    .line 399
    :cond_17
    :goto_11
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_text:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v15, :cond_19

    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->title:Ljava/lang/String;

    if-nez v2, :cond_18

    move-object/from16 v2, v16

    goto :goto_12

    :cond_18
    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    const/4 v1, 0x1

    goto :goto_13

    :cond_1a
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_14

    :cond_1b
    const/16 v2, 0x8

    .line 402
    :goto_14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_1c

    .line 403
    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :cond_1c
    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/support/SupportStore;->photoPaths(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 408
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 411
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v5, v21

    goto :goto_16

    :cond_1f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    invoke-direct {v8, v9, v0, v5}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showPhotos(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Ljava/util/List;Ljava/util/List;)V

    if-nez v18, :cond_21

    if-nez v1, :cond_21

    .line 412
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_17

    :cond_20
    const/4 v0, 0x0

    goto :goto_18

    :cond_21
    :goto_17
    const/4 v0, 0x1

    .line 413
    :goto_18
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->ticket_report:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_22

    const/4 v2, 0x0

    goto :goto_19

    :cond_22
    const/16 v2, 0x8

    :goto_19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->ticket_report_label:I

    invoke-virtual {v8, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_1a

    :cond_23
    const/16 v0, 0x8

    :goto_1a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_details:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 418
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 419
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 420
    const-string v1, "d_number"

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_24
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->dayAndTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d_raised"

    invoke-direct {v8, v0, v2, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 424
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->dayAndTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d_updated"

    invoke-direct {v8, v0, v2, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_25
    const-string v1, "d_status"

    iget-object v2, v10, Lcom/argusoft/sewa/android/app/support/SupportStatus;->label:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->messages:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 431
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    .line 432
    iget-object v3, v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    if-nez v3, :cond_26

    const-string v3, "Replied with a voice note."

    iget-object v4, v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 433
    iget-object v3, v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    invoke-direct {v8, v11, v3, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->nearest(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    move-result-object v3

    goto :goto_1c

    :cond_26
    move-object/from16 v3, v17

    .line 434
    :goto_1c
    iget-object v4, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->messages:Landroid/widget/LinearLayout;

    invoke-direct {v8, v9, v2, v3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->bubble(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1b

    .line 436
    :cond_27
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->messages:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_28

    .line 437
    iget-object v0, v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->messages:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->noReplies()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    :cond_28
    const-string v0, "REOPEN"

    if-nez v14, :cond_2a

    const-string v1, "RESOLVED"

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "CLOSE"

    invoke-virtual {v9, v1}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->may(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v9, v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->may(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v1, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v1, 0x0

    .line 445
    :goto_1d
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->ticket_fixed_bar:I

    invoke-virtual {v8, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_2b

    const/4 v3, 0x0

    goto :goto_1e

    :cond_2b
    const/16 v3, 0x8

    :goto_1e
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    const-string v2, "CLOSED"

    if-nez v14, :cond_2c

    iget-object v3, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v9, v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->may(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2c
    const/4 v0, 0x0

    .line 447
    :goto_1f
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->ticket_reopen:I

    invoke-virtual {v8, v3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_20

    :cond_2d
    const/16 v0, 0x8

    :goto_20
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v0, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "REJECTED"

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "CANCELLED"

    iget-object v2, v9, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_21

    :cond_2e
    const/4 v13, 0x0

    .line 449
    :cond_2f
    :goto_21
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_reply_bar:I

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v1, :cond_31

    if-eqz v13, :cond_30

    goto :goto_22

    :cond_30
    const/4 v10, 0x0

    goto :goto_23

    :cond_31
    :goto_22
    const/16 v10, 0x8

    :goto_23
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private saveAndSendReply(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->owner()Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->saveReply(Ljava/lang/Long;ILjava/lang/String;Ljava/io/File;)Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 935
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 936
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 937
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    .line 938
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    .line 939
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->pushReply(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    goto :goto_0

    .line 941
    :cond_0
    const-string p1, "saved_press_sync"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 942
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    .line 943
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->scrollDown()V

    :goto_0
    return-void

    .line 931
    :catch_0
    const-string p1, "could_not"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private scrollDown()V
    .locals 4

    .line 972
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_scroll:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 973
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda4;-><init>(Landroid/widget/ScrollView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPhoto(Ljava/io/File;)V
    .locals 4

    .line 832
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 833
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 834
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 835
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 836
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 837
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 840
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 841
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPhotos(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;",
            ">;)V"
        }
    .end annotation

    .line 776
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->report_photos:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 777
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 778
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 779
    :goto_1
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->report_photos_strip:I

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 780
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42b00000    # 88.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 781
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->thumb(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    move-result-object v3

    .line 783
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/support/SupportPhotos;->thumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_3

    .line 785
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    .line 786
    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->thumb(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    move-result-object v2

    .line 787
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->hasCopy(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 788
    new-instance v3, Ljava/io/File;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->localPath:Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/support/SupportPhotos;->thumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p0, v2, p3, v3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_4

    .line 790
    :cond_5
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 791
    invoke-virtual {p0, p1, p3, v2, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->loadPhoto(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method private showReplyState()V
    .locals 7

    .line 898
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    .line 899
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 900
    :goto_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->mic:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_stop:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_mic:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 901
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->mic:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 902
    sget v5, Lcom/argusoft/sewa/android/app/R$color;->support_recording:I

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 901
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 903
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->mic:Landroid/widget/ImageButton;

    iget-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 904
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    const/16 v5, 0x8

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 905
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    iget-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    xor-int/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 906
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->reply_recording:I

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->send:Landroid/view/View;

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 908
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->reply_busy:I

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    const/16 v3, 0x8

    :goto_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_8

    .line 910
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->reply_recording_text:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    .line 911
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tap_to_send_voice"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method private showTrack(Lcom/argusoft/sewa/android/app/support/SupportStatus;I)V
    .locals 10

    .line 514
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_track:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 515
    iget v1, p1, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->support_line:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 517
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 518
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->track_dot1:I

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->track_dot2:I

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->track_dot3:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    .line 519
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->track_label1:I

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->track_label2:I

    sget v6, Lcom/argusoft/sewa/android/app/R$id;->track_label3:I

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 521
    iget v6, p1, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 522
    :goto_2
    aget v7, v3, v5

    invoke-virtual {p0, v7}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 524
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->support_mic_circle:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 525
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 526
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_check:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    sget v9, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 529
    :cond_2
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->support_ring:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 531
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    :goto_3
    aget v7, v4, v5

    invoke-virtual {p0, v7}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    move v9, p2

    goto :goto_4

    :cond_3
    move v9, v1

    .line 534
    :goto_4
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    invoke-virtual {v7, v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 537
    :cond_4
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->track_line1:I

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p1, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    move v2, p2

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 538
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->track_line2:I

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget p1, p1, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    if-lt p1, v6, :cond_6

    goto :goto_6

    :cond_6
    move p2, v0

    :goto_6
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private syncNow()V
    .locals 3

    .line 270
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 272
    const-string v0, "sync_offline"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 276
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->note_pending_sync:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->owner()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->runSync(Ljava/lang/Long;)V

    return-void
.end method

.method private tell(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V
    .locals 2

    .line 1044
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne v0, v1, :cond_0

    const-string p1, "need_network"

    goto :goto_0

    .line 1045
    :cond_0
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->SESSION:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne p1, v0, :cond_1

    const-string p1, "login_again"

    goto :goto_0

    .line 1046
    :cond_1
    const-string p1, "could_not"

    .line 1047
    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private text(ILjava/lang/String;)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private thumb(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;
    .locals 4

    .line 797
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 798
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 799
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 800
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v3, v3, v0

    .line 801
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 802
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->support_line:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 803
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 804
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 805
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41000000    # 8.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 806
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 807
    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static tint(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x1f000000

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method answered(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1032
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    .line 1033
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1036
    const-string p1, "answer_waiting"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "thank_you"

    goto :goto_0

    :cond_2
    const-string p1, "opened_again"

    .line 1037
    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    return-void
.end method

.method fetch()V
    .locals 2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, p0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->refreshOne(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :catch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->fetched()V

    return-void
.end method

.method fetchAndPlay(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V
    .locals 1

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p0, p2, p3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->download(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playNow(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 730
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->notPlayed(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V

    :goto_0
    return-void
.end method

.method fetched()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    :cond_0
    return-void
.end method

.method synthetic lambda$askWhyNotFixed$13$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 993
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->answer(ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindPlayer$9$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Ljava/lang/String;Ljava/io/File;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/TextView;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Landroid/view/View;)V
    .locals 0

    .line 708
    iget-object p6, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {p6, p1}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->isPlaying(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 709
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 713
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playNow(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 714
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->hasCopy(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 715
    new-instance p2, Ljava/io/File;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->localPath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playNow(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 716
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 717
    const-string p2, "loading"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    invoke-virtual {p0, p1, p5, p3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->fetchAndPlay(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V

    goto :goto_0

    .line 720
    :cond_3
    const-string p1, "need_network"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$0$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Ljava/lang/String;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onPlaying(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->syncNow()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onMic()V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->cancelRecording()V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onSendText()V

    return-void
.end method

.method synthetic lambda$onCreate$6$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->answer(ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$7$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->askWhyNotFixed()V

    return-void
.end method

.method synthetic lambda$onCreate$8$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Landroid/view/View;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->askWhyNotFixed()V

    return-void
.end method

.method synthetic lambda$photoLoaded$10$com-argusoft-sewa-android-app-activity-SupportTicketActivity(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showPhoto(Ljava/io/File;)V

    return-void
.end method

.method loadPhoto(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V
    .locals 1

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->download(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Ljava/io/File;

    move-result-object p1

    .line 815
    invoke-static {p1, p4}, Lcom/argusoft/sewa/android/app/support/SupportPhotos;->thumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p3, p2, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method notPlayed(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V
    .locals 1

    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onPlaying(Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->tell(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 139
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_support_ticket:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->setContentView(I)V

    .line 141
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 142
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 143
    const-string p1, "your_report"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->setTitle(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "support_ticket_local_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    .line 146
    new-instance v0, Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    .line 147
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportAudio;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportAudio;-><init>(Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    .line 148
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_refresh:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 149
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_messages:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->messages:Landroid/widget/LinearLayout;

    .line 150
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->reply_mic:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->mic:Landroid/widget/ImageButton;

    .line 151
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->reply_text:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    .line 152
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->reply_send:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->send:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 157
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_messages_title:I

    const-string v1, "replies"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 158
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->ticket_report_label:I

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 159
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_details_label:I

    const-string v0, "details"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 160
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_fixed_question:I

    const-string v0, "is_it_fixed"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 161
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->report_voice_title:I

    const-string v0, "play_recording"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 162
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->track_label1:I

    const-string v0, "track_got_it"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 163
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->track_label2:I

    const-string v0, "track_fixing"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 164
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->track_label3:I

    const-string v0, "track_fixed"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 165
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->note_pending_body:I

    const-string v0, "not_sent_banner"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->text(ILjava/lang/String;)V

    .line 166
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->note_pending_sync:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const-string v0, "sync_now"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 167
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_yes:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const-string v0, "yes_fixed"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_no:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const-string v0, "not_fixed"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    const-string v0, "write_reply"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->mic:Landroid/widget/ImageButton;

    const-string v0, "reply_by_voice"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->send:Landroid/view/View;

    const-string v0, "send"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->reply_cancel:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "cancel"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->note_pending_sync:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->mic:Landroid/widget/ImageButton;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->reply_cancel:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->send:Landroid/view/View;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->reply:Landroid/widget/EditText;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_yes:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_no:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_reopen:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const-string v0, "problem_back"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 197
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->ticket_reopen:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->clock:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->discard()V

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 218
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->voice:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->cancelRecording()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 885
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x1006

    if-eq p1, p2, :cond_0

    return-void

    .line 889
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 890
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onMic()V

    goto :goto_0

    .line 892
    :cond_1
    const-string p1, "mic_permission"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 208
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->resumeActivity()V

    .line 209
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->fetch()V

    :cond_0
    return-void
.end method

.method photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 823
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 827
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;Ljava/io/File;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method playNow(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->audio:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->toggle(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 740
    const-string p1, "could_not"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 741
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onPlaying(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V
    .locals 1

    .line 1022
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V

    .line 1023
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {p1, p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->refreshOne(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 1027
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->answered(ZZ)V

    return-void
.end method

.method pushReply(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 1

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pushComment(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    .line 952
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {p1, p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->refreshOne(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 956
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->replyDone(Z)V

    return-void
.end method

.method replyDone(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 961
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->busy:Z

    .line 962
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showReplyState()V

    .line 963
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 966
    const-string p1, "reply_sent"

    goto :goto_0

    :cond_1
    const-string p1, "saved_press_sync"

    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 967
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    .line 968
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->scrollDown()V

    return-void
.end method

.method runSync(Ljava/lang/Long;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->sync(Landroid/content/Context;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;

    move-result-object p1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->localId:I

    invoke-virtual {v0, p0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->refreshOne(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :catch_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V

    return-void
.end method

.method synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 297
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->note_pending_sync:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-boolean v0, p1, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->offline:Z

    if-eqz v0, :cond_1

    const-string p1, "sync_offline"

    goto :goto_0

    .line 299
    :cond_1
    iget-boolean v0, p1, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->sessionEnded:Z

    if-eqz v0, :cond_2

    const-string p1, "login_again"

    goto :goto_0

    .line 300
    :cond_2
    iget-boolean p1, p1, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->networkProblem:Z

    if-eqz p1, :cond_3

    const-string p1, "sync_problem"

    goto :goto_0

    .line 301
    :cond_3
    const-string p1, "sync_done"

    .line 302
    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->render()V

    return-void
.end method
