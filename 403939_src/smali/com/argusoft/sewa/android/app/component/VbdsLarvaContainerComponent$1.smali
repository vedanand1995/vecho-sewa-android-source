.class Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;
.super Ljava/lang/Object;
.source "VbdsLarvaContainerComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method synthetic lambda$onTextChanged$0$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent$1(Ljava/lang/CharSequence;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$100(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 184
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$000(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 185
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$000(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
