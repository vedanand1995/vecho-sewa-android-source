.class Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;
.super Ljava/lang/Object;
.source "PhoneNumberVerificationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addSubCenterSelectionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)V
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
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 340
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->longValue()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/util/List;)Ljava/util/List;

    .line 341
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
