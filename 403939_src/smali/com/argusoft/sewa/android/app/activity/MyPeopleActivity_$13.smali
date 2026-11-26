.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;
.super Ljava/lang/Object;
.source "MyPeopleActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->setFilariasisSideEffectsMemberSelectionScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

.field final synthetic val$isSearch:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V
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

    .line 259
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;->val$isSearch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;->val$isSearch:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->access$1201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V

    return-void
.end method
