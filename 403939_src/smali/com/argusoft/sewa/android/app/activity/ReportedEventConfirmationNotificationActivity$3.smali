.class Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;
.super Ljava/lang/Object;
.source "ReportedEventConfirmationNotificationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->viewServiceTypeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;

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

    .line 187
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;I)I

    .line 188
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->onClick(Landroid/view/View;)V

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
