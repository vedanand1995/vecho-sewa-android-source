.class Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;
.super Ljava/lang/Object;
.source "FamilyMigrationOutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addPhcSpinner(Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

.field final synthetic val$isSearch:Z

.field final synthetic val$locationMasterBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 860
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->val$locationMasterBeans:Ljava/util/List;

    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->val$isSearch:Z

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

    .line 864
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 867
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 868
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$1900(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 869
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$2000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 871
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 872
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "4"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;->val$isSearch:Z

    invoke-static {p2, p1, p3}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$2400(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/lang/Long;Z)V

    :cond_0
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
