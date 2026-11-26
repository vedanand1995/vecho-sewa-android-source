.class Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;
.super Ljava/lang/Object;
.source "NotificationAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showReadOnlyNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 578
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 579
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->markNotificationAsRead(Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V

    .line 580
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 581
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 582
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addSearchTextBox()V

    .line 584
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 585
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
