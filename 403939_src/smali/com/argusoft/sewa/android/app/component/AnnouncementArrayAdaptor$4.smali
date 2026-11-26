.class Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;
.super Ljava/lang/Object;
.source "AnnouncementArrayAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->manageAnnouncementAudioData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

.field final synthetic val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/model/AnnouncementBean;)V
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

    .line 223
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 227
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getIsPlayedAnnouncement()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsPlayedAnnouncement(I)V

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$000(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Playing the announcement"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$202(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$200(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$200(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;)V

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$302(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    .line 240
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$300(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->show()V

    goto :goto_1

    .line 241
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->SUPPORTED_EXTENSIONS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "File is not supported."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "File is corrupted."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "File does not exist"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
