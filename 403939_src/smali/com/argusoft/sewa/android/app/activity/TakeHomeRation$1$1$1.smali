.class Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$1;
.super Ljava/lang/Object;
.source "TakeHomeRation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;->this$0:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->val$s:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->retrieveChildrens(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    return-void
.end method
