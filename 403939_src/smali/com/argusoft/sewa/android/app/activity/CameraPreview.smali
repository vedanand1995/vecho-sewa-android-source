.class Lcom/argusoft/sewa/android/app/activity/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CustomPhotoCaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 250
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 252
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x3

    .line 253
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 283
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 284
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
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
    .locals 2

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 261
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CameraPreview;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method
