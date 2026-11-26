.class Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$4;
.super Ljava/lang/Object;
.source "NotificationAshaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationScreen(Z)V
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

    .line 436
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

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

    .line 439
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 440
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$1002(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    :cond_0
    return-void
.end method
