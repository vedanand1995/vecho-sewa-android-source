.class Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;
.super Ljava/lang/Object;
.source "NotificationOtherServicesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->viewTypeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;

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

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;I)I

    .line 150
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)Lcom/google/android/material/button/MaterialButton;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->onClick(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
