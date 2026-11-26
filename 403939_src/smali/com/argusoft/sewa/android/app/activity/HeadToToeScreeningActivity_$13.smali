.class Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;
.super Ljava/lang/Object;
.source "HeadToToeScreeningActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$defect:Ljava/util/Map;

.field final synthetic val$defectLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V
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

    .line 234
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->val$defectLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->val$defect:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->val$defectLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;->val$defect:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->access$1201(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    return-void
.end method
