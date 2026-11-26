.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;
.super Ljava/lang/Object;
.source "NDHMHealthIdCaptureActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->displayHealthIdScreenV3(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Landroid/graphics/Bitmap;)V
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

    .line 204
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->access$1001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Landroid/graphics/Bitmap;)V

    return-void
.end method
