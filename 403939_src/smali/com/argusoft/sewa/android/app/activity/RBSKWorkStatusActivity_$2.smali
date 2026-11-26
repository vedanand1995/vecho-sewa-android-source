.class Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_$2;
.super Ljava/lang/Object;
.source "RBSKWorkStatusActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;->retrieveWorkLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;->access$101(Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;)V

    return-void
.end method
