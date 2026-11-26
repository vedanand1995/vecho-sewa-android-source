.class Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;
.super Ljava/lang/Object;
.source "VeryHighRiskPregnancyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 523
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 524
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    .line 525
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->finish()V

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
