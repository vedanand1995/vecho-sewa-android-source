.class Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;
.super Ljava/lang/Object;
.source "LabTestScreeningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 354
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 355
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->navigateToHomeScreen(Z)V

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->finish()V

    goto :goto_0

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
