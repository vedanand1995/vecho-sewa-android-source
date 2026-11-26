.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addRegionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 407
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    .line 412
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;

    move-result-object p5

    sub-int/2addr p3, p2

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 413
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    iget-object p4, p3, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 p5, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p5, v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/List;)Ljava/util/List;

    .line 414
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, p2

    new-array p3, p3, [Ljava/lang/String;

    .line 415
    const-string p4, "-Select-"

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p1

    .line 417
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p4, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 418
    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    add-int/2addr p4, p2

    goto :goto_0

    .line 422
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 423
    new-array p3, p2, [Ljava/lang/String;

    .line 424
    const-string p2, "Select Region"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    .line 426
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    sget p4, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-direct {p1, p2, p4, p3}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 427
    sget p2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 428
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->notifyDataSetChanged()V

    .line 429
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

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
