.class public Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkLogFileActivity.java"


# instance fields
.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private retrieveWorkLog()V
    .locals 17

    move-object/from16 v0, p0

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->showProcessDialog()V

    .line 49
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getFileWorkLog()Ljava/util/List;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    .line 54
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->success:I

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFormType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFormType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->error:I

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFormType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_3
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    const-string v3, "There is no worklog to display"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_4
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity$1;

    invoke-direct {v1, v0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;Landroid/content/Context;Ljava/util/List;)V

    const/4 v2, 0x0

    .line 74
    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->setContentView(Landroid/view/View;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 35
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->finish()V

    .line 43
    :cond_0
    const-string v0, "Worklog File"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->setTitle(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogFileActivity;->retrieveWorkLog()V

    return-void
.end method
