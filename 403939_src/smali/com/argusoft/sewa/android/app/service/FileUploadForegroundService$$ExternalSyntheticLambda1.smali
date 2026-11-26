.class public final synthetic Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;->f$2:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;->f$2:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->lambda$onStartCommand$0$com-argusoft-sewa-android-app-service-FileUploadForegroundService(Ljava/util/ArrayList;Landroid/os/ResultReceiver;)V

    return-void
.end method
