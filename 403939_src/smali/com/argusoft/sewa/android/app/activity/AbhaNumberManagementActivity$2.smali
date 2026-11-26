.class Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;
.super Ljava/lang/Object;
.source "AbhaNumberManagementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setChoiceSelectionScreen()V
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

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_1

    .line 117
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string p2, "isForNonExistingMember"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string p2, "featureName"

    const-string p3, "ABHA_NUMBER"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3fc

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x3fd

    .line 126
    :goto_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    invoke-virtual {p3, p1, p2}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 128
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
