.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;
.super Ljava/lang/Object;
.source "NDHMHealthIdCaptureActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->createMobileOtpValidationScreen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->access$701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V

    return-void
.end method
