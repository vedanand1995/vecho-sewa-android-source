.class Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;
.super Ljava/lang/Object;
.source "NCDScreeningAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 433
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 434
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    .line 435
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->finish()V

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
