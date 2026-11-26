.class Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;
.super Ljava/lang/Object;
.source "LabTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LabTestActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 329
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    .line 330
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->finish()V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
