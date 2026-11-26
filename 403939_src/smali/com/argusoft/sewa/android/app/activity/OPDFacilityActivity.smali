.class public Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "OPDFacilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;
    }
.end annotation


# static fields
.field private static final FORM_CODE:Ljava/lang/String; = "formCode"

.field private static final HEALTH_INFRA_SELECTION_SCREEN:Ljava/lang/String; = "healthInfraSelectionScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final TAG:Ljava/lang/String; = "OPDFacilityActivity"


# instance fields
.field answerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnswerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private healthInfraDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private healthInfraSpinner:Landroid/widget/Spinner;

.field private memberDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field questionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/QuestionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private screen:Ljava/lang/String;

.field private selectedFormConfig:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private selectedHealthInfraDetails:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMemberDetails:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMemberIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private final sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 76
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberIndex:I

    return p1
.end method

.method private checkIfOnline(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    :try_start_0
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;)V

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showOfflineMessage(Z)V

    return v1
.end method

.method private initView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    .line 121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showProcessDialog()V

    .line 122
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setContentView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 125
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->nextButton:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->checkIfOnline(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveHealthInfraAssignedToUser()V

    :cond_0
    return-void
.end method

.method private retrieveLabTestForm(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 347
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 348
    const-string v1, "formCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string p1, "retrieve_lab_test_form_opd_lab_test"

    const/4 v1, 0x0

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const/4 v4, 0x0

    .line 354
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, p1, v1, v0, v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 353
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p1

    .line 357
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedFormConfig:Ljava/util/LinkedHashMap;

    .line 358
    const-string v0, "formConfigJson"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 361
    const-string v0, "OPDFacilityActivity"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method private storeFormDataToDatabase(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;)V"
        }
    .end annotation

    .line 367
    const-string v0, "entity"

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToQuestionBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 371
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v3, v2, p2, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToAnswerBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 376
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 380
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    .line 381
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 386
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 390
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    .line 391
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public generateToast(Ljava/lang/String;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 401
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3ed

    if-ne p1, p3, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showProcessDialog()V

    const/4 p1, -0x1

    .line 404
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberIndex:I

    if-ne p2, p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveMemberDetails()V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showMemberDetails()V

    .line 411
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    return-void

    .line 421
    :cond_0
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->checkIfOnline(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_a

    .line 426
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_6

    const-string v0, "healthInfraSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 434
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 435
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedHealthInfraDetails:Ljava/util/LinkedHashMap;

    .line 436
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveMemberDetails()V

    goto :goto_2

    .line 438
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a health infrastructure"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->finish()V

    return-void

    .line 442
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 448
    :cond_7
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberIndex:I

    if-ne p1, v2, :cond_8

    .line 449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a member to continue"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    .line 454
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->openForm()V

    goto :goto_2

    .line 443
    :cond_9
    :goto_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->finish()V

    :cond_a
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 463
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 464
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 469
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 470
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "healthInfraSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 476
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showHealthInfraDetails()V

    :goto_0
    return v1

    :cond_4
    return v2

    .line 465
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setContentView(Landroid/view/View;)V

    .line 109
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->finish()V

    .line 116
    :cond_1
    const-string v0, "OPD Lab Test"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public openForm()V
    .locals 7

    .line 307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showProcessDialog()V

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    const-string v1, "formCode"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveLabTestForm(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;)V

    .line 312
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    const-string v5, "firstName"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    const-string v5, "middleName"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    const-string v5, " "

    if-eqz v4, :cond_0

    .line 318
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    const-string v6, "lastName"

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "nameOfBeneficiary"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 330
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->storeFormDataToDatabase(Ljava/lang/String;Ljava/util/List;)V

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "isOPDLabTestForm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedMemberDetails:Ljava/util/LinkedHashMap;

    const-string v2, "labTestDetId"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v1, v3

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedFormConfig:Ljava/util/LinkedHashMap;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ed

    .line 338
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 340
    :cond_2
    const-string v0, "Form not found"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->generateToast(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    :goto_0
    return-void
.end method

.method public retrieveHealthInfraAssignedToUser()V
    .locals 6

    const/4 v0, 0x0

    .line 171
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    const-string v2, "userId"

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "retrieve_health_infra_for_opd_lab_test"

    .line 176
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const/4 v5, 0x0

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 176
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    goto :goto_0

    .line 182
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showHealthInfraDetails()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 186
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    .line 187
    const-string v2, "Some error occurred. Please try again."

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->generateToast(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public retrieveMemberDetails()V
    .locals 6

    const/4 v0, 0x0

    .line 232
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 233
    const-string v2, "healthInfraId"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedHealthInfraDetails:Ljava/util/LinkedHashMap;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "retrieve_member_details_for_opd_lab_test"

    .line 237
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const/4 v5, 0x0

    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 237
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showMemberDetails()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 246
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    .line 247
    const-string v2, "Some error occurred. Please try again."

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->generateToast(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public showHealthInfraDetails()V
    .locals 6

    .line 194
    const-string v0, "healthInfraSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->screen:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->selectedHealthInfraDetails:Ljava/util/LinkedHashMap;

    .line 207
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveMemberDetails()V

    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v3, "Select Health Infrastructure"

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraDetailsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    .line 217
    const-string v5, "healthInfraName"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 219
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->healthInfraSpinner:Landroid/widget/Spinner;

    .line 225
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    return-void

    .line 198
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v2, "No Health Infrastructure is assigned to you."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    return-void
.end method

.method public showMemberDetails()V
    .locals 8

    .line 259
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->screen:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v2, "Please Select a Member"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->memberDetailsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v5, "firstName"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v5, "middleName"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 279
    const-string v6, " "

    if-eqz v5, :cond_1

    .line 280
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1
    const-string v5, "lastName"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 285
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_2
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v6, "healthId"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "testName"

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v4, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_3
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;)V

    .line 300
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    invoke-static {v2, v0, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    return-void

    .line 263
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v2, "No members have been registered for lab test in your health infrastructure"

    .line 264
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->hideProcessDialog()V

    return-void
.end method

.method public showOfflineMessage(Z)V
    .locals 6

    .line 154
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;Z)V

    .line 162
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->context:Landroid/content/Context;

    const-string v0, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 163
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 165
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
