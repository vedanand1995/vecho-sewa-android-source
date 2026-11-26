.class Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;
.super Ljava/lang/Object;
.source "HeadToToeScreeningActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->setSelectedDefectsScreen(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

.field final synthetic val$defects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/List;)V
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

    .line 270
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;->val$defects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;->val$defects:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->access$1501(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/List;)V

    return-void
.end method
