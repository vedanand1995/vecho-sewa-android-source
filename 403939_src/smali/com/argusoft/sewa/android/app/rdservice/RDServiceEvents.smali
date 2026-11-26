.class public interface abstract Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;
.super Ljava/lang/Object;
.source "RDServiceEvents.java"


# virtual methods
.method public abstract onRDServiceCaptureFailed(ILandroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract onRDServiceCaptureResponse(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract onRDServiceDriverDiscovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract onRDServiceDriverDiscoveryFailed(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRDServiceDriverNotFound()V
.end method
