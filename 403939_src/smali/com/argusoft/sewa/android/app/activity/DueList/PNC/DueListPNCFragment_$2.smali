.class Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$2;
.super Ljava/lang/Object;
.source "DueListPNCFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;->runOnUiThreadSetLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;

.field final synthetic val$isLoading:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;Z)V
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

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$2;->val$isLoading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$2;->val$isLoading:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;->access$101(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;Z)V

    return-void
.end method
