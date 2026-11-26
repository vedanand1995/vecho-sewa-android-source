.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;
.super Ljava/lang/Object;
.source "LmsBookmarksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->showPopUpWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

.field final synthetic val$micButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/widget/ImageButton;)V
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

    .line 199
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->val$micButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "Record"

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$900(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$902(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Z)Z

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1002(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 208
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".amr"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$402(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 211
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 212
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_BOOKMARK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 216
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->val$micButton:Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 217
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Recording started"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 223
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    .line 224
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 225
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$1002(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->val$micButton:Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Audio Recorded successfully"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$902(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Z)Z

    :goto_0
    return-void
.end method
