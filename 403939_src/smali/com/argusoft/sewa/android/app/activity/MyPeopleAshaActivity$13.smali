.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;
.super Ljava/lang/Object;
.source "MyPeopleAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addTableRow(Landroid/widget/TableLayout;ILjava/util/LinkedHashMap;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

.field final synthetic val$map:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;Ljava/util/LinkedHashMap;)V
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

    .line 1347
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;->val$map:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;->val$map:Ljava/util/LinkedHashMap;

    const-string v0, "hiddenVisitId"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1351
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;->val$map:Ljava/util/LinkedHashMap;

    const-string v1, "hiddenServiceType"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1353
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1354
    const-string v2, "visitId"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    const-string p1, "serviceType"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
