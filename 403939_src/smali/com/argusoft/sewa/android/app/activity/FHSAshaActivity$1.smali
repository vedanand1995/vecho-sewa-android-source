.class Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;
.super Ljava/lang/Object;
.source "FHSAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 245
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    .line 246
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->finish()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
