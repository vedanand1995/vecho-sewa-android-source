.class Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;
.super Ljava/lang/Object;
.source "HighRiskPregnancyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSelectionType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

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

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->access$402(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;I)I

    .line 287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 290
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->searchTextBox()V

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    return-void
.end method
