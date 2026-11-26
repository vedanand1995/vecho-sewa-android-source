.class Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;
.super Ljava/lang/Object;
.source "HighRiskAshaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSelectionType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

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

    .line 246
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;I)I

    .line 247
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchTextBox()V

    .line 250
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
