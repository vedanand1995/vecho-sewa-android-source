.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$2;
.super Ljava/lang/Object;
.source "MyPeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1217
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 1221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "leprosySurvey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
