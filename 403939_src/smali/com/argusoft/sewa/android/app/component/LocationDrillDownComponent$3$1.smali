.class Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;
.super Ljava/util/TimerTask;
.source "LocationDrillDownComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;Ljava/lang/CharSequence;)V
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

    .line 560
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;->this$1:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-component-LocationDrillDownComponent$3$1(Ljava/lang/CharSequence;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;->this$1:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$1500(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;->this$1:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$1400(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
