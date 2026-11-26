.class Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;
.super Ljava/lang/Object;
.source "MigrateOutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addVillageSpinner(Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

.field final synthetic val$locationMasterBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->val$locationMasterBeans:Ljava/util/List;

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

    .line 987
    const-string p1, "6"

    if-eqz p3, :cond_0

    .line 988
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$802(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 989
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 991
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
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
