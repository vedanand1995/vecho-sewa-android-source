.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;->startPDFViewerActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$isTranscript:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->val$desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->val$isTranscript:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->val$desc:Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_$2;->val$isTranscript:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;->access$101(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
