.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->generateBookmarkList(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 660
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 663
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_1

    .line 664
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    .line 665
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getFileName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 666
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 667
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_BOOKMARK:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 668
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".provider"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4, p5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 669
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-static {p3, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p2

    .line 670
    new-instance p3, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p4, p4, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;)V

    .line 671
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->show()V

    goto :goto_0

    .line 673
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 674
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 678
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    return-void
.end method
