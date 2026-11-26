.class Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;
.super Ljava/lang/Object;
.source "FamilyMergeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->onBackPressed()V
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

    .line 130
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 136
    const-string v0, "isMerged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->finish()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
