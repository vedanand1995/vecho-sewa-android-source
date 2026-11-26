.class public Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;
.super Ljava/lang/Object;
.source "AudioTextBoxListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioTextBoxListener"


# instance fields
.field private final answer:[Ljava/lang/String;

.field private editText:Landroid/widget/EditText;

.field private fileType:Ljava/lang/String;

.field private flag:Z

.field private final mFileName:Ljava/io/File;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "District:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "AUD_D"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Block:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "AUD_B"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Village:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const-string v0, "AUD_V"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "Other_Audio"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 53
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 54
    aput-object v2, v0, v1

    .line 55
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->flag:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_AUDIO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".amr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mFileName:Ljava/io/File;

    return-void
.end method

.method private setAnswer()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 154
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMandatory(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "Stop Recording"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "F"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mFileName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 135
    const-string v0, "AudioTextBoxListener"

    const-string v1, "Recording is started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopRecording()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mRecorder:Landroid/media/MediaRecorder;

    .line 142
    const-string v0, "AudioTextBoxListener"

    const-string v1, "Recording is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mFileName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 145
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->audioFilesToUpload:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->mFileName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->fileType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x271a

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    .line 77
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .line 78
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->flag:Z

    const-string v1, "Audio not recorded"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->startRecording()V

    .line 82
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 84
    const-string v6, "Audio Recording..."

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->flag:Z

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->flag:Z

    .line 87
    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setMandatory(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aput-object v4, p1, v5

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error in recording "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 95
    :cond_2
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setMandatory(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aput-object v4, p1, v5

    goto :goto_2

    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aput-object v4, v0, v5

    .line 98
    throw p1

    .line 103
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->stopRecording()V

    .line 104
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 106
    const-string v6, "Audio recorded"

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    :cond_4
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->flag:Z

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->flag:Z

    .line 109
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setMandatory(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setAnswer()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 111
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Recorder is not stopped"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    aput-object v4, v0, v5

    .line 114
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 118
    :cond_5
    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setMandatory(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    .line 120
    :goto_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setAnswer()V

    .line 121
    throw p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 62
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->editText:Landroid/widget/EditText;

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->answer:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 65
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;->setAnswer()V

    :cond_0
    return-void
.end method
