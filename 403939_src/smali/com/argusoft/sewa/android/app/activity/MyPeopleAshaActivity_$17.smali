.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;
.super Ljava/lang/Object;
.source "MyPeopleAshaActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;

.field final synthetic val$resultMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/Map;)V
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

    .line 287
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;->val$resultMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;->val$resultMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->access$1601(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/Map;)V

    return-void
.end method
