.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;
.super Ljava/lang/Thread;
.source "MyPeopleAwwActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->startDynamicFormActivity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

.field final synthetic val$formType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 766
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->val$formType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->val$formType:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 770
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "entity"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->val$formType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$1400()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 772
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    return-void
.end method
