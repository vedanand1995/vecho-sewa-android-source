.class Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2$1;
.super Ljava/lang/Object;
.source "MyAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$1000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$900(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
