.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;
.super Ljava/lang/Object;
.source "MyPeopleAshaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMalariaScreen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

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

    .line 853
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;I)I

    .line 854
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMemberSelectionScreen(Z)V

    .line 856
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onClick(Landroid/view/View;)V

    .line 857
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
