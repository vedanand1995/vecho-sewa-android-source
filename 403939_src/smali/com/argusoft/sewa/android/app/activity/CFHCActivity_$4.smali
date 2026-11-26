.class Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;
.super Ljava/lang/Object;
.source "CFHCActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->setFamilySelectionScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;

.field final synthetic val$isSearch:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Z)V
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

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;->val$isSearch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;->val$isSearch:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->access$301(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Z)V

    return-void
.end method
