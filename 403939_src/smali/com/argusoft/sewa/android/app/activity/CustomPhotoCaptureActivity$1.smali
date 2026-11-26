.class Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$1;
.super Ljava/lang/Object;
.source "CustomPhotoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v1, "CAMERA"

    invoke-interface {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
