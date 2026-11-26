.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;
.super Ljava/lang/Object;
.source "NDHMHealthIdCreationActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->displayHealthIdScreen(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Landroid/graphics/Bitmap;)V
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

    .line 203
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->access$901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Landroid/graphics/Bitmap;)V

    return-void
.end method
