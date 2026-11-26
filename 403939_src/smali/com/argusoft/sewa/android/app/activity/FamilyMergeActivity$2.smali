.class Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;
.super Ljava/lang/Object;
.source "FamilyMergeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "isMerged"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->showProcessDialog()V

    .line 176
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 177
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x1

    .line 178
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "familyToExpand"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "familyToMerge"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->hideProcessDialog()V

    .line 183
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->finish()V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 186
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 187
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->finish()V

    :goto_0
    return-void
.end method
