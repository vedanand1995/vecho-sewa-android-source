.class Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;
.super Ljava/lang/Object;
.source "NotificationAwwActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addNotificationTypeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

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

    .line 310
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;I)I

    .line 311
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;J)J

    .line 312
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 313
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 315
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 316
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addSearchTextBox()V

    .line 317
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->context:Landroid/content/Context;

    const-string p2, "Please select a Notification type"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
