.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;
.super Ljava/lang/Object;
.source "WorkRegisterChoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setAshaSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

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

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;I)I

    .line 196
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->users:Ljava/util/List;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;I)I

    return-void
.end method
