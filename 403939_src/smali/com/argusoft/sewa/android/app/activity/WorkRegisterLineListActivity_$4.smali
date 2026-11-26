.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;
.super Ljava/lang/Object;
.source "WorkRegisterLineListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;->addLineListDetails(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;

.field final synthetic val$instruction:Ljava/lang/String;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->val$instruction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->val$results:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_$4;->val$instruction:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;->access$301(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
