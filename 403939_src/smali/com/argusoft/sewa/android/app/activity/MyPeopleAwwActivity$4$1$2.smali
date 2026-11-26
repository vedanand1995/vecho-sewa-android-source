.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1$2;
.super Ljava/lang/Object;
.source "MyPeopleAwwActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    return-void
.end method
