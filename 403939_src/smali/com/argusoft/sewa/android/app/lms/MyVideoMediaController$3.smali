.class Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;
.super Ljava/lang/Object;
.source "MyVideoMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 470
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 472
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    .line 474
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    :cond_0
    return-void
.end method
