.class Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;
.super Ljava/lang/Object;
.source "HighRiskPregnancyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 501
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 502
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    .line 503
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->finish()V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
