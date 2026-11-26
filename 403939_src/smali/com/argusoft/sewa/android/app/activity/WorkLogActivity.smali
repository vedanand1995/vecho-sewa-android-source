.class public Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkLogActivity.java"


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->setContentView(Landroid/view/View;)V

    .line 57
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 58
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 59
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 61
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->backgroundHandler:Landroid/os/Handler;

    .line 68
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->finish()V

    .line 75
    :cond_0
    const-string v0, "Work Log"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->setTitle(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->retrieveWorkLog()V

    return-void
.end method

.method public retrieveWorkLog()V
    .locals 21

    move-object/from16 v0, p0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->showProcessDialog()V

    .line 82
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getWorkLog()Ljava/util/List;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    .line 85
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 86
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x1

    .line 88
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    .line 91
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getFileWorkLog(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 92
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->success:I

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 94
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "P"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 97
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Q"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->queue:I

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    :cond_3
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->error:I

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 103
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_4
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->warning:I

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 106
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 110
    :cond_5
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const-string v18, "There is no worklog to display"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_6
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;

    invoke-direct {v1, v0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 132
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->hideProcessDialog()V

    return-void
.end method
