.class Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;
.super Ljava/lang/Object;
.source "MyVideoMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    .line 408
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->handled:Z

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
