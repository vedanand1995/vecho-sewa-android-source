.class Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;
.super Ljava/lang/Object;
.source "NotificationAshaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationTypeScreen()V
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

    .line 371
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

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

    .line 374
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    const-wide/16 p4, 0x0

    invoke-static {p1, p4, p5}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;J)J

    .line 375
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;I)I

    .line 376
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 377
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAMTA_DAY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "selectedAshaAreas"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "selectedVillageIds"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string p2, "role"

    const-wide/16 p3, 0x18

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 383
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$600()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 386
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 387
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p3, p2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addSearchTextBox()V

    .line 389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 390
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-string p2, "Please select a Notification type"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
