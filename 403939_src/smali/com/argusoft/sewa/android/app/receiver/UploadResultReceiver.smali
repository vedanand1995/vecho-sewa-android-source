.class public Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver;
.super Landroid/os/ResultReceiver;
.source "UploadResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;
    }
.end annotation


# instance fields
.field private final receiver:Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver;->receiver:Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 22
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver;->receiver:Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;->onUploadFinished()V

    :cond_0
    return-void
.end method
