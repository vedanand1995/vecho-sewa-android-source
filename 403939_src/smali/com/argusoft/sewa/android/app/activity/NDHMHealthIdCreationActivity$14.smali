.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;
.super Ljava/lang/Object;
.source "NDHMHealthIdCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1434
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1437
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1438
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 1439
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setResult(I)V

    .line 1440
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    goto :goto_0

    .line 1442
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
