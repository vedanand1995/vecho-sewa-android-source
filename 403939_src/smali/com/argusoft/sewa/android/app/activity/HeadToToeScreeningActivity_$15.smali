.class Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;
.super Ljava/lang/Object;
.source "HeadToToeScreeningActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->setDefaultImage(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

.field final synthetic val$defectLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;)V
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

    .line 258
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;->val$defectLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;->val$defectLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->access$1401(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;)V

    return-void
.end method
