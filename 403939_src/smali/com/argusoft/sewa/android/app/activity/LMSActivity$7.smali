.class Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;
.super Ljava/lang/Object;
.source "LMSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 448
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->navigateToHomeScreen(Z)V

    .line 450
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->finish()V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
