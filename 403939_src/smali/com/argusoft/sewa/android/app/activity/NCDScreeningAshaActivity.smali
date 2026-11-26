.class public Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NCDScreeningAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final LIMIT:J = 0x1eL

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final REQUEST_CODE_FOR_NCD_SCREENING_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"


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

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field public formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private rbText:Ljava/lang/String;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedMemberIndex:I

.field public sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private spinner:Landroid/widget/Spinner;

.field public techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private titleView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->REQUEST_CODE_FOR_NCD_SCREENING_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->timer:Ljava/util/Timer;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedMemberIndex:I

    .line 98
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamilyIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedMemberIndex:I

    return p1
.end method

.method private addLastUpdateLabel()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 348
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 353
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->rbText:Ljava/lang/String;

    .line 358
    const-string v4, " null"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->rbText:Ljava/lang/String;

    goto :goto_2

    .line 360
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->rbText:Ljava/lang/String;

    .line 362
    :goto_2
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->rbText:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 130
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 131
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 132
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->footerView:Landroid/widget/LinearLayout;

    .line 136
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setBodyDetail()V

    return-void
.end method

.method private setMetadataForFormByFormType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 423
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v2, p1, v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForNCDForms(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 218
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "Select Asha Area"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 224
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 227
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->spinner:Landroid/widget/Spinner;

    .line 228
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 231
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 232
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 244
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addLastUpdateLabel()V

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 245
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 450
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, -0x1

    .line 451
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedMemberIndex:I

    const/4 p2, 0x0

    .line 452
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 453
    sget-object p3, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->REQUEST_CODE_FOR_NCD_SCREENING_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3

    .line 455
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMembersListForCbacEntry(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 456
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 457
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 464
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addSearchTextBox()V

    .line 465
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_3
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 429
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)V

    .line 442
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close NCD Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 192
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedMemberIndex:I

    if-eq p1, v2, :cond_5

    .line 193
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 194
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    const-string p1, "CBAC Entry for selected member is already done."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v1, "entity"

    const-string v2, "NCD_ASHA_CBAC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setMetadataForFormByFormType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 202
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->REQUEST_CODE_FOR_NCD_SCREENING_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->hideProcessDialog()V

    goto/16 :goto_2

    .line 205
    :cond_5
    const-string p1, "Please select a member of the family."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :pswitch_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamilyIndex:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 179
    :cond_6
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->finish()V

    goto :goto_2

    .line 182
    :cond_7
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamilyIndex:I

    if-eq p1, v2, :cond_8

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 184
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_8
    const-string p1, "Please Select a Family"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 167
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 168
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 172
    :cond_a
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addSearchTextBox()V

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_2
        -0xa1992ec -> :sswitch_1
        0x2cfd2b1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 526
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveFamiliesForCbacEntry(Ljava/lang/String;Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v0

    .line 527
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->offset:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->offset:J

    .line 528
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 521
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 533
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 476
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    .line 484
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "ashaAreaSelectionScreen"

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "serviceSelectionScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "memberSelectionScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "familySelectionScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 513
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->finish()V

    goto :goto_3

    .line 487
    :pswitch_0
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedMemberIndex:I

    .line 488
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setMemberSelectionScreen()V

    goto :goto_3

    .line 493
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 494
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamilyIndex:I

    .line 495
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addSearchTextBox()V

    .line 496
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_3

    .line 501
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_6

    .line 502
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_2

    .line 504
    :cond_6
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    .line 506
    :goto_2
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    goto :goto_3

    .line 510
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    :cond_7
    :goto_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setContentView(Landroid/view/View;)V

    .line 118
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->finish()V

    .line 125
    :cond_1
    const-string v0, "CBAC Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    .line 300
    iput-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->offset:J

    .line 301
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 302
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedFamilyIndex:I

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    const-wide/16 v3, 0x1e

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveFamiliesForCbacEntry(Ljava/lang/String;Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 304
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->offset:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 305
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 369
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedMemberIndex:I

    if-eqz p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMembersListForCbacEntry(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 372
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setMemberSelectionScreen()V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 142
    const-string v1, "ashaAreaSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 310
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->noFamilyAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->rbText:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 320
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)V

    .line 329
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 330
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_0
    const-string v0, "No families found."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->noFamilyAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 334
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p1, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->hideProcessDialog()V

    :cond_1
    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 8

    .line 378
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->screen:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select a member from list"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const-string v3, " \u2714\ufe0f\ufe0f"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)V

    .line 400
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v2, v0, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There is no member having age more than 30 years in this family."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
