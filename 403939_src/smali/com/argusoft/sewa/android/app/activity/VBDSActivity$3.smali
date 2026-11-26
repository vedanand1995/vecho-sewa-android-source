.class Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;
.super Ljava/lang/Object;
.source "VBDSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/VBDSActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/VBDSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 400
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/VBDSActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 401
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/VBDSActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->navigateToHomeScreen(Z)V

    .line 402
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/VBDSActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->finish()V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/VBDSActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
