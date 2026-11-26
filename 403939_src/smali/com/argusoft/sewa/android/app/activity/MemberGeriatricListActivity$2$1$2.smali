.class Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1$2;
.super Ljava/lang/Object;
.source "MemberGeriatricListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->showProcessDialog()V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->fetchGeriatricListFromDB(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method
