.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;->sendOtpRequest(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    .line 130
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
