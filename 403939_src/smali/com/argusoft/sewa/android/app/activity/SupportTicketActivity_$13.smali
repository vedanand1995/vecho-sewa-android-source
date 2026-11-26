.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "SupportTicketActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->loadPhoto(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

.field final synthetic val$into:Landroid/widget/ImageView;

.field final synthetic val$photo:Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

.field final synthetic val$size:I

.field final synthetic val$t:Lcom/argusoft/sewa/android/app/model/SupportTicketBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$t:Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$photo:Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    iput-object p8, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$into:Landroid/widget/ImageView;

    iput p9, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$size:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$t:Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$photo:Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$into:Landroid/widget/ImageView;

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$13;->val$size:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->access$1201(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;Landroid/widget/ImageView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 257
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
