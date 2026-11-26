.class Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;
.super Landroid/view/SurfaceView;
.source "PhotoCaptureWithUploadActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCameraPreview"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->this$0:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;

    .line 352
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 353
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 354
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 355
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x3

    .line 356
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 396
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 397
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 370
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 371
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 382
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 384
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
