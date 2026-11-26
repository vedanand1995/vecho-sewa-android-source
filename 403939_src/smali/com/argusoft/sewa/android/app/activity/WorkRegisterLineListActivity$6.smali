.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;
.super Ljava/lang/Object;
.source "WorkRegisterLineListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->addFloatingActionButton(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

.field final synthetic val$resultSet:Ljava/util/List;

.field final synthetic val$titleTexts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;Ljava/util/List;Ljava/util/List;)V
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

    .line 307
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;->val$resultSet:Ljava/util/List;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;->val$titleTexts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;->val$resultSet:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;->val$titleTexts:Ljava/util/List;

    invoke-static {v0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
