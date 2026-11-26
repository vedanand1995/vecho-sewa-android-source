.class public Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "CustomVideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomVideoPlayer"


# instance fields
.field private currentPosition:I

.field private dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private fileLocation:Ljava/lang/String;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playingSourceNumber:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private playVideoSequentially()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 117
    :cond_0
    :goto_0
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->dataSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->fileLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->dataSources:Ljava/util/List;

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "CustomVideoPlayer"

    if-eqz v3, :cond_3

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is found and ready to play"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 124
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 126
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 127
    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->currentPosition:I

    if-lez v3, :cond_1

    .line 128
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v3}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v3

    const/4 v6, 0x0

    .line 132
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    .line 134
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->currentPosition:I

    if-eqz v1, :cond_2

    .line 136
    const-string v1, "Video file is corrupted. do login again"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 140
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_3
    const-string v2, "File not found"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    .line 145
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->currentPosition:I

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "Video file is not downloaded. do login again"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    return v4
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 234
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->currentPosition:I

    .line 235
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    .line 236
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 237
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 238
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 208
    const-string p1, "CustomVideoPlayer"

    const-string v0, "onCompletion Called"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playingSourceNumber:I

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->currentPosition:I

    .line 211
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playVideoSequentially()Z

    move-result p1

    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 55
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->finish()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 70
    const-string v3, "dataMap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    const-string v4, "isFromAnnouncement"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 72
    const-string v5, "fileLocation"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->fileLocation:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_1
    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->fileLocation:Ljava/lang/String;

    :cond_2
    if-eqz v3, :cond_4

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Data map is Found is : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CustomVideoPlayer"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    .line 81
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    .line 82
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->dataSources:Ljava/util/List;

    .line 84
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDataMapValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->dataSources:Ljava/util/List;

    .line 91
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->dataSources:Ljava/util/List;

    const-string v3, "There is no video to play"

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 92
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->playVideoSequentially()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 97
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 98
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 99
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 104
    :cond_5
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 109
    :cond_6
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 308
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->currentPosition:I

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 198
    const-string p1, "CustomVideoPlayer"

    const-string p2, "surfaceChanged called"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 158
    const-string v0, "surfaceCreated Called"

    const-string v1, "CustomVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 161
    :try_start_0
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p1}, Landroid/widget/MediaController;->bringToFront()V

    .line 165
    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;)V

    .line 179
    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity$1;->setMediaController(Landroid/widget/MediaController;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    .line 166
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 181
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;->finish()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 203
    const-string p1, "CustomVideoPlayer"

    const-string v0, "surfaceDestroyed Called"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
