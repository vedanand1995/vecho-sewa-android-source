.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;
.super Ljava/lang/Object;
.source "MyPeopleAwwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showNotOnlineMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 678
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 679
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 680
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 681
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 682
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setServiceSelectionScreen()V

    .line 683
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
