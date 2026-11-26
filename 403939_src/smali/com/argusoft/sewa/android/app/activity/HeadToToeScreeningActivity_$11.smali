.class Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;
.super Ljava/lang/Object;
.source "HeadToToeScreeningActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->addEventHandler(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

.field final synthetic val$childBackBodyLayout:Landroid/widget/RelativeLayout;

.field final synthetic val$childFrontBodyLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
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

    .line 210
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;->val$childFrontBodyLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;->val$childBackBodyLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;->this$0:Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;->val$childFrontBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;->val$childBackBodyLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->access$1001(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-void
.end method
