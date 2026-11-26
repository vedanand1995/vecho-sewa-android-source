.class Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;
.super Ljava/lang/Object;
.source "AbhaNumberManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 86
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->navigateToHomeScreen(Z)V

    .line 87
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->finish()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
