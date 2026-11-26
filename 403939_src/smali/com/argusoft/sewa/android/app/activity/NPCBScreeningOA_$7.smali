.class Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;
.super Ljava/lang/Object;
.source "NPCBScreeningOA_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->setMemberSelectionScreen(Ljava/lang/Boolean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

.field final synthetic val$isSearch:Ljava/lang/Boolean;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/Boolean;I)V
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

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;->val$isSearch:Ljava/lang/Boolean;

    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;->val$isSearch:Ljava/lang/Boolean;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;->val$requestId:I

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->access$601(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/Boolean;I)V

    return-void
.end method
