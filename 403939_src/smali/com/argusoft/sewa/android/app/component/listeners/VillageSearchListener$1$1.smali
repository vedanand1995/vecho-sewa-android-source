.class Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;
.super Ljava/util/TimerTask;
.source "VillageSearchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;Ljava/lang/CharSequence;)V
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

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-component-listeners-VillageSearchListener$1$1(Ljava/lang/CharSequence;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
