.class public Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NcdScreeningFhwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ACTIVITY_CODE_FOR_CBAC_DETAILS_ACTIVITY:Ljava/lang/Integer;

.field private static final ACTIVITY_CODE_FOR_CBAC_FORM_ACTIVITY:Ljava/lang/Integer;

.field private static final CBAC_QUESTION_SCREEN:Ljava/lang/String; = "cbacQuestionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final LIMIT:J = 0x1eL

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


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

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private familyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

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

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field public ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private screen:Ljava/lang/String;

.field private screeningForms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberCbacDone:Z

.field private selectedMemberCompletedScreenings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMemberIndex:I

.field private selectedServiceIndex:I

.field public sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private textView:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Ljava/util/Timer;

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ACTIVITY_CODE_FOR_CBAC_DETAILS_ACTIVITY:Ljava/lang/Integer;

    const/16 v0, 0x190

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ACTIVITY_CODE_FOR_CBAC_FORM_ACTIVITY:Ljava/lang/Integer;

    const/16 v0, 0x1f5

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/16 v0, 0x1f6

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamilyIndex:I

    .line 102
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberIndex:I

    .line 103
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedServiceIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)Ljava/util/Timer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedServiceIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)Landroid/widget/Button;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 270
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 11
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

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 373
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 379
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 381
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

    .line 382
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 383
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

    .line 384
    const-string v4, " null"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 386
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 389
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastMemberNcdScreeningDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastMemberNcdScreeningDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 392
    :cond_2
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 138
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 141
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setBodyDetail()V

    return-void
.end method

.method private isMemberAllScreeningDone(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Z
    .locals 5

    .line 441
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFinancialYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 443
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    const-string v4, "T"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    const-string v4, "F"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBreastYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBreastYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCervicalYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCervicalYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 444
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private setCbacQuestionScreen()V
    .locals 5

    .line 459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    const-string v0, "cbacQuestionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCbacDone:Z

    .line 465
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "CBAC form is already filled. Do you want to view the details of CBAC?"

    invoke-static {v2, v2, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 467
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCbacDone:Z

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Would you like to fill CBAC Form?"

    invoke-static {v2, v2, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 472
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v3, "Yes"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v3, "No"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 475
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void
.end method

.method private setMetadataForFormByFormType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 559
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 562
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v2, p1, v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForNCDForms(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V

    :cond_1
    return-void
.end method

.method private setServiceSelectionScreen()V
    .locals 6

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 481
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 485
    const-string v0, "Select Service Type"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 488
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedServiceIndex:I

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    .line 492
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFinancialYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NCD_FHW_HYPERTENSION"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v4

    const-string v5, " \u2714\ufe0f\ufe0f"

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NCD_FHW_DIABETES"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 506
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_1
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NCD_FHW_ORAL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 524
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NCD_FHW_BREAST"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 525
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBreastYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBreastYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 528
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_3
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NCD_FHW_CERVICAL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 534
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCervicalYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCervicalYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_4
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_5
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)V

    .line 549
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showNotOnlineMessage()V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 598
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 599
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 601
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 602
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 605
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 606
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 568
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 572
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 573
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 577
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 578
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 591
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 633
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 635
    sget-object p3, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ACTIVITY_CODE_FOR_CBAC_FORM_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 637
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void

    .line 642
    :cond_0
    sget-object p3, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ACTIVITY_CODE_FOR_CBAC_DETAILS_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-ne p1, p3, :cond_2

    if-nez p2, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 645
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setCbacQuestionScreen()V

    .line 646
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void

    :cond_1
    if-ne p2, v0, :cond_2

    .line 649
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 650
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setServiceSelectionScreen()V

    .line 651
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void

    .line 655
    :cond_2
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 656
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->isMemberAllScreeningDone(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 658
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 659
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberIndex:I

    .line 660
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 662
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 663
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setServiceSelectionScreen()V

    .line 665
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 612
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)V

    .line 625
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close NCD Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 628
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 166
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "serviceSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "cbacQuestionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "memberSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "familySelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "villageSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const-string v1, "entity"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 245
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedServiceIndex:I

    if-eq p1, v3, :cond_7

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screeningForms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCompletedScreenings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 249
    const-string p1, "The form for selected type of service is already filled. Please select another type of service"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 252
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setMetadataForFormByFormType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    const/16 p1, 0xc8

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedServiceIndex:I

    .line 258
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    goto/16 :goto_4

    .line 262
    :cond_7
    const-string p1, "Please select a type of service"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 217
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 218
    const-string p1, "Please Select an option"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 219
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 220
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberCbacDone:Z

    if-eqz p1, :cond_a

    .line 221
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 222
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 223
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "memberId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ACTIVITY_CODE_FOR_CBAC_DETAILS_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    goto/16 :goto_4

    .line 228
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showNotOnlineMessage()V

    goto/16 :goto_4

    .line 232
    :cond_a
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 233
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v0, "NCD_ASHA_CBAC"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setMetadataForFormByFormType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 236
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ACTIVITY_CODE_FOR_CBAC_FORM_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    goto/16 :goto_4

    .line 240
    :cond_b
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setServiceSelectionScreen()V

    goto/16 :goto_4

    .line 204
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberIndex:I

    if-eq p1, v3, :cond_d

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 206
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->isMemberAllScreeningDone(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 207
    const-string p1, "All the screenings for the selected member has been done."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 209
    :cond_c
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setCbacQuestionScreen()V

    goto/16 :goto_4

    .line 212
    :cond_d
    const-string p1, "Please select a member of the family."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 191
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    .line 195
    :cond_e
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamilyIndex:I

    if-eq p1, v3, :cond_f

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 197
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 199
    :cond_f
    const-string p1, "Please Select a Family"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 192
    :cond_10
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->navigateToHomeScreen(Z)V

    return-void

    .line 169
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedAshaAreas:Ljava/util/List;

    .line 172
    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 174
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 177
    :cond_11
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 178
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_13
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->addSearchTextBox()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    :cond_14
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13a69534 -> :sswitch_4
        -0xa1992ec -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x5ca54713 -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 747
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedAshaAreas:Ljava/util/List;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveFamiliesForNcdScreening(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 748
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->offset:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->offset:J

    .line 749
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 742
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->onLoadMoreBackground()V

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

    .line 754
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 757
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 759
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 689
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, -0x1

    .line 690
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedServiceIndex:I

    .line 691
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 696
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    if-ne p1, v1, :cond_8

    const/4 p1, 0x0

    .line 697
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "villageSelectionScreen"

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v4, "serviceSelectionScreen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "cbacQuestionScreen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "memberSelectionScreen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "familySelectionScreen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const-string v4, "Next"

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 700
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 701
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setCbacQuestionScreen()V

    goto :goto_4

    .line 704
    :pswitch_1
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberIndex:I

    .line 705
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 706
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 709
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 710
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 711
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamilyIndex:I

    .line 712
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 713
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->addSearchTextBox()V

    .line 714
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 715
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 719
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->villageList:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 722
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 723
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 724
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->addVillageSelectionSpinner()V

    goto :goto_3

    .line 720
    :cond_7
    :goto_2
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->navigateToHomeScreen(Z)V

    .line 726
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    goto :goto_4

    .line 731
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->navigateToHomeScreen(Z)V

    :goto_4
    return v2

    :cond_8
    return v3

    .line 692
    :cond_9
    :goto_5
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x13a69534 -> :sswitch_4
        -0xa1992ec -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x5ca54713 -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setContentView(Landroid/view/View;)V

    .line 126
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->finish()V

    .line 133
    :cond_1
    const-string v0, "NCD Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 7

    .line 322
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->searchString:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 323
    iput-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->offset:J

    const/4 v0, -0x1

    .line 324
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedFamilyIndex:I

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedAshaAreas:Ljava/util/List;

    const-wide/16 v3, 0x1e

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveFamiliesForNcdScreening(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyDataBeans:Ljava/util/List;

    .line 326
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->offset:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 327
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 401
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->selectedMemberIndex:I

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMembersListForNcdScreening(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->memberDataBeans:Ljava/util/List;

    .line 403
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->setMemberSelectionScreen()V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->villageList:Ljava/util/List;

    .line 151
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->villageList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->ashaAreaList:Ljava/util/List;

    .line 156
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->addVillageSelectionSpinner()V

    goto :goto_1

    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    :goto_1
    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 5

    .line 332
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyIds:Ljava/util/List;

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 340
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)V

    if-eqz p1, :cond_0

    .line 351
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 358
    :cond_1
    const-string v0, "No families found."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 359
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p1, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->showProcessDialog()V

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 6

    .line 409
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->screen:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select a member from list"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->isMemberAllScreeningDone(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    const-string v4, " \u2714\ufe0f\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    :cond_0
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;)V

    .line 432
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There is no member having age more than 30 years in this family."

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
