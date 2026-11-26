.class Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;
.super Ljava/lang/Object;
.source "AdolescentEventNotificationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addDistrictSpinner(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

.field final synthetic val$locationMasterBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V
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

    .line 1245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->val$locationMasterBeans:Ljava/util/List;

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

    .line 1249
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "3"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "4"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1254
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1255
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1256
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1500(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1257
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1258
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1259
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1260
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$1900(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 1262
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1263
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "2"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$2002(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1265
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$2200(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)V

    goto :goto_0

    .line 1267
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "1"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$2002(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)Ljava/lang/Long;

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
