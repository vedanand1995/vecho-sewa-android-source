.class Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;
.super Ljava/lang/Object;
.source "MamtaDayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setVisitSelectionScreen(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 418
    const-string p2, "FHW_WPD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 419
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "FHW_ANC"

    invoke-virtual {p3, p4, p5}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->checkIfThereArePendingNotificationsForMember(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 420
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    new-instance p3, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    iget-object p4, p4, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->context:Landroid/content/Context;

    const-string p5, "Some ANC alerts are pending for this Beneficiary. You will NOT be able to fill ANC after filling out WPD. Do you want to proceed?"

    const/16 v0, -0x97

    invoke-direct {p3, p4, p5, p2, v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 435
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_0

    .line 437
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/lang/String;)V

    .line 444
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
