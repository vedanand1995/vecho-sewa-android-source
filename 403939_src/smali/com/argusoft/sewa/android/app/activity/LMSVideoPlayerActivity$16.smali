.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mc:Landroid/widget/MediaController;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 815
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 825
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;->mc:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public setMediaController(Landroid/widget/MediaController;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$16;->mc:Landroid/widget/MediaController;

    return-object p0
.end method
