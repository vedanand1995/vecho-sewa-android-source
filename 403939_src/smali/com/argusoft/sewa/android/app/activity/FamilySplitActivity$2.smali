.class Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;
.super Ljava/lang/Object;
.source "FamilySplitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 165
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setResult(I)V

    .line 166
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->finish()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
