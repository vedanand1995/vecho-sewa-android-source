.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;
.super Ljava/lang/Object;
.source "LmsBookmarksAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

.field final synthetic val$micButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;Landroid/widget/ImageButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->val$micButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "Record"

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$602(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Z)Z

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$702(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 211
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".amr"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$502(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 216
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_BOOKMARK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 218
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->val$micButton:Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Recording started"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$702(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 229
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->val$micButton:Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 230
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Audio Recorded successfully"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$602(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Z)Z

    :goto_0
    return-void
.end method
