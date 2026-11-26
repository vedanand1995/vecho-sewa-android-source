.class Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;
.super Ljava/lang/Object;
.source "DueListPNCFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;->updateListWithNextPage(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;

.field final synthetic val$hasMore:Z

.field final synthetic val$newData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;Ljava/util/List;Z)V
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

    .line 82
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;->val$newData:Ljava/util/List;

    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;->val$hasMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;->val$newData:Ljava/util/List;

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$1;->val$hasMore:Z

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;->access$001(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;Ljava/util/List;Z)V

    return-void
.end method
