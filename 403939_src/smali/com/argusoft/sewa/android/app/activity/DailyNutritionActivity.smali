.class public Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "DailyNutritionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ashaAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private ashaAreaSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;

.field familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private selectedAshaArea:Ljava/lang/Integer;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Landroid/widget/Button;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->showProcessDialog()V

    .line 133
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 134
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 135
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->nextButton:Landroid/widget/Button;

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setBodyDetail()V

    return-void
.end method

.method private nextButtonPressed()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->showProcessDialog()V

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 178
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->checkIfAlreadyFilled()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->showProcessDialog()V

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "Daily Nutrition Form"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameOfBeneficiary"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "entity"

    const-string v2, "AWW_DAILY_NUTRITION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f5

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setSubTitle(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 234
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 237
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 238
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 241
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 242
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->hideProcessDialog()V

    return-void
.end method

.method public addChildData()V
    .locals 9

    .line 189
    const-string v0, " "

    const-string v1, "state"

    const-string v2, "familyId"

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setSubTitle(Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "areaId"

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 192
    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v4, v1, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    .line 195
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 197
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, -0x3

    const/4 v7, 0x1

    .line 201
    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 202
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 203
    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 204
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 205
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 206
    invoke-virtual {v6, v2, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v5, "dob"

    invoke-virtual {v2, v5, v4, v8}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v2, v1, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 213
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 214
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMiddleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 216
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "locationId"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->childrenFrom3To6Years:Ljava/util/List;

    .line 220
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->startDynamicFormActivity()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public checkIfAlreadyFilled()V
    .locals 11

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;->retrieveDailyNutritionLogByLocationId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->getSeviceDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 107
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;

    invoke-direct {v9, p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)V

    .line 119
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v8, "You have already filled this form for today."

    const/16 v10, -0x69

    const/4 v7, 0x0

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->addChildData()V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->addChildData()V

    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3f5

    if-ne p1, p2, :cond_1

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->addAshaAreaSelectionSpinner()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 260
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)V

    .line 273
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Daily Nutrition Form?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->nextButtonPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->context:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 253
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->navigateToHomeScreen(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setContentView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v0

    const-string v1, "AWW_DAILY_NUTRITION"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->checkIfAlreadyFilled()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method
