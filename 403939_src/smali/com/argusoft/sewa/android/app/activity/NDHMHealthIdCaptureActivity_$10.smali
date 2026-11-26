.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;
.super Ljava/lang/Object;
.source "NDHMHealthIdCaptureActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->setConfirmationScreen(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$photo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 192
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;->val$photo:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;->val$photo:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->access$901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
