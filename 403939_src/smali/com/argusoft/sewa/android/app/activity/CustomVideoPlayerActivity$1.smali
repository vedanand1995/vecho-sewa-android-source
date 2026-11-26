.class Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "CustomVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mc:Landroid/widget/MediaController;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;->mc:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public setMediaController(Landroid/widget/MediaController;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;->mc:Landroid/widget/MediaController;

    return-object p0
.end method
