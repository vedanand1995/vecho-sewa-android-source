.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;
.super Ljava/lang/Thread;
.source "MyStaticComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$dataSources:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$dataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 398
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$dataSources:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is found and ready to play"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyStaticComponents"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 406
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 408
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
