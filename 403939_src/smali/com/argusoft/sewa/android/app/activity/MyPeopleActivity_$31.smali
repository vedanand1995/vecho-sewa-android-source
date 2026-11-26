.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;
.super Ljava/lang/Object;
.source "MyPeopleActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->setVisitSelectionScreen(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

.field final synthetic val$visits:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
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

    .line 475
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;->val$visits:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;->val$visits:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->access$3001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    return-void
.end method
