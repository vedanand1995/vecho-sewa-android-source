.class Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;
.super Ljava/lang/Object;
.source "VeryHighRiskPregnancyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->displayMembers(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

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

    .line 338
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Ljava/util/List;

    move-result-object p2

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    iget-object p4, p4, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithCorrectBankDetail:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$602(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;I)I

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Ljava/util/List;

    move-result-object p2

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;

    iget-object p4, p4, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithIncorrectBankDetail:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->access$602(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;I)I

    :goto_0
    return-void
.end method
