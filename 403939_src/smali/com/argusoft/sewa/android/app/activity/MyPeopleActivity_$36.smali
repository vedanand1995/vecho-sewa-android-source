.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;
.super Ljava/lang/Object;
.source "MyPeopleActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

.field final synthetic val$isChild:Ljava/lang/Boolean;

.field final synthetic val$resultMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/Map;Ljava/lang/Boolean;)V
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

    .line 535
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;->val$resultMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;->val$isChild:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;->val$resultMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;->val$isChild:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->access$3501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/Map;Ljava/lang/Boolean;)V

    return-void
.end method
