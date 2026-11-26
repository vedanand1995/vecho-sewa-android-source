.class public Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_$IntentBuilder_;
.super Lorg/androidannotations/api/builder/ServiceIntentBuilder;
.source "FileUploadForegroundService_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder_"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/ServiceIntentBuilder<",
        "Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_$IntentBuilder_;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const-class v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;

    invoke-direct {p0, p1, v0}, Lorg/androidannotations/api/builder/ServiceIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
