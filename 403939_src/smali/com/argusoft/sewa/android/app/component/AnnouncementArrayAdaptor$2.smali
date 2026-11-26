.class Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;
.super Ljava/lang/Object;
.source "AnnouncementArrayAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->manageAnnouncementPdfData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V
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

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getIsPlayedAnnouncement()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsPlayedAnnouncement(I)V

    .line 142
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$000(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Playing the announcement"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->val$announcementBean:Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fileName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "File does not exist"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
