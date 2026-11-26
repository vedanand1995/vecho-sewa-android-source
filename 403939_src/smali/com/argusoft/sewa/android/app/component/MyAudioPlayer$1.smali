.class Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;
.super Ljava/lang/Object;
.source "MyAudioPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 116
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$100(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$200(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$500(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$200(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$300(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$300(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$400(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$500(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object v0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$600(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$300(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$300(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$400(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 121
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$700(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)V

    :cond_1
    return-void
.end method
