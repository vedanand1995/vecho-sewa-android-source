.class public Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RBSKWorkStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private nextButton:Landroid/widget/Button;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->showProcessDialog()V

    .line 69
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 72
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->nextButton:Landroid/widget/Button;

    .line 75
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->setBodyDetail()V

    return-void
.end method

.method private setBodyDetail()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->retrieveWorkLog()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->navigateToHomeScreen(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->setContentView(Landroid/view/View;)V

    .line 57
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->finish()V

    .line 64
    :cond_1
    const-string v0, "Work Status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveWorkLog()V
    .locals 19

    move-object/from16 v0, p0

    .line 84
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getWorkLog()Ljava/util/List;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 88
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x1

    .line 90
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    .line 93
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->success:I

    .line 95
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "P"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    .line 99
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->error:I

    .line 104
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    :cond_3
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
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

    .line 108
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->warning:I

    .line 109
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 114
    :cond_4
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const-string v16, "There is no worklog to display"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_5
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity$1;

    invoke-direct {v1, v0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 122
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->hideProcessDialog()V

    return-void
.end method
