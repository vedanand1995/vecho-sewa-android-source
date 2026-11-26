.class public Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AnnouncementActivity.java"


# instance fields
.field private announcementBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            ">;"
        }
    .end annotation
.end field

.field announcementBeansDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->announcementBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "On Restore CALLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 55
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 56
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_announcement:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->setContentView(I)V

    .line 57
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 58
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 59
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->announcementContainer:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 60
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->finish()V

    .line 68
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Processing...."

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->retrieveAnnouncements()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onRetrieveAnnouncementsComplete()V
    .locals 8

    .line 86
    const-string v0, "Announcement"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->setSubTitle(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->announcementBeans:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->announcementBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    .line 92
    new-instance v4, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getAnnouncementId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getPublishedOn()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    new-instance v2, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->announcementBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v2, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V

    .line 96
    invoke-static {p0, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 98
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No announcement available"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method

.method retrieveAnnouncements()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getAllAnnouncement()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->announcementBeans:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity;->onRetrieveAnnouncementsComplete()V

    return-void
.end method
