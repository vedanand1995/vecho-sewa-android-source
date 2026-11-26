.class public final Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;
.super Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;
.source "SupportTicketActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;-><init>()V

    .line 41
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/Long;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->runSync(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->fetched()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->fetchAndPlay(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->loadPhoto(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->pushReply(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->playNow(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->notPlayed(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->replyDone(Z)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;ZZ)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->answered(ZZ)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->fetch()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStore_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/support/SupportStore_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;
    .locals 1

    .line 81
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;
    .locals 1

    .line 85
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method answered(ZZ)V
    .locals 2

    .line 174
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;ZZ)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 186
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method fetch()V
    .locals 7

    .line 202
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$10;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method fetchAndPlay(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V
    .locals 10

    .line 234
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V

    invoke-static {v9}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method fetched()V
    .locals 4

    .line 102
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method loadPhoto(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V
    .locals 11

    .line 250
    new-instance v10, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v10

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V

    invoke-static {v10}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method notPlayed(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V
    .locals 3

    .line 138
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->init_(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method playNow(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;Ljava/io/File;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V
    .locals 9

    .line 282
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method pushReply(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 8

    .line 266
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method replyDone(Z)V
    .locals 3

    .line 162
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method runSync(Ljava/lang/Long;)V
    .locals 8

    .line 218
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$11;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->setContentView(I)V

    .line 65
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 90
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V
    .locals 3

    .line 114
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
