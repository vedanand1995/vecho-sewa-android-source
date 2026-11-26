.class public Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MobileNumberValidationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MOBILE_NUMBER_VERIFICATION_SCREEN:Ljava/lang/String; = "mobileNumberVerificationScreen"

.field private static final MSG_MOBILE_NOT_VALID:Ljava/lang/String; = "Mobile number must contain 10 digits."

.field private static final MSG_MOBILE_NULL:Ljava/lang/String; = "Please Enter Mobile Number"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headerText:Landroid/widget/TextView;

.field private isDefaultMobileNumber:Ljava/lang/Boolean;

.field private isYesChecked:Z

.field private limit:I

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationId:Ljava/lang/String;

.field private memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:I

.field private otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private radioGroupForYesNo:Landroid/widget/RadioGroup;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedFamilyIndex:I

.field private selectedMemberIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private spinner:Landroid/widget/Spinner;

.field techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

.field private timer:Ljava/util/Timer;

.field private verificationLayoutContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBeans:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->isYesChecked:Z

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedFamilyIndex:I

    .line 116
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    const/16 v0, 0x1e

    .line 117
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->limit:I

    .line 119
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Ljava/util/Timer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedMemberIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->isYesChecked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->verificationLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->verificationLayoutContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 428
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 432
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 434
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

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    const-string v4, " null"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 437
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    :goto_2
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 148
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 149
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 151
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setContentView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showNotOnlineMessage()V

    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setBodyDetail()V

    return-void
.end method

.method private mobileNumberUpdationBean()V
    .locals 3

    .line 671
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;-><init>()V

    .line 672
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->setMemberId(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->setMobileNumber(Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->setWhatsappSmsSchems(Ljava/lang/Boolean;)V

    .line 676
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->mobileNumberVerificationAndUpdationOfFamilyMember(Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;Ljava/lang/Long;)V

    .line 677
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v1, "Mobile number verified successfully."

    .line 678
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showNotOnlineMessage()V
    .locals 5

    .line 682
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->hideProcessDialog()V

    .line 683
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    .line 690
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 691
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 693
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 694
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public addFamilySelectionScreen()V
    .locals 4

    .line 394
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const-string v0, "Search Family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 401
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 405
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    .line 411
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 412
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    :cond_0
    const-string v0, "No families found."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 416
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addMemberDetailsScreen()V
    .locals 10

    .line 483
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v2, "Member Details"

    .line 488
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v2, "Member Id"

    .line 491
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 490
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 493
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v2, "Member Name"

    .line 496
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 498
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Abha Number"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not available"

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v4, "Date of birth"

    .line 508
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy"

    .line 510
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 513
    :try_start_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v5

    .line 514
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v8, "Age"

    .line 515
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 514
    invoke-static {v3, v3, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    aget v8, v5, v0

    aget v9, v5, v4

    aget v5, v5, v2

    .line 517
    invoke-static {v8, v9, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v5

    .line 516
    invoke-static {v7, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v7, "Gender"

    .line 522
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 521
    invoke-static {v3, v3, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v5

    .line 525
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_2
    const/4 v0, -0x1

    goto :goto_3

    :sswitch_0
    const-string v0, "T"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string v0, "M"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    :sswitch_2
    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 534
    :pswitch_0
    const-string v5, "Transgender"

    goto :goto_4

    .line 528
    :pswitch_1
    const-string v5, "Male"

    goto :goto_4

    .line 531
    :pswitch_2
    const-string v5, "Female"

    .line 537
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    .line 538
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-static {v6, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v6, "Mobile Number"

    .line 541
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 540
    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 543
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 544
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    .line 543
    invoke-static {v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v5, "Mobile Number verified"

    .line 547
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 546
    invoke-static {v3, v3, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    .line 550
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Yes"

    const-string v7, "No"

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    move-object v5, v7

    :goto_5
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-static {v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 553
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v5, "Do you want to change the mobile number?"

    invoke-static {v3, v3, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    .line 557
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 558
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 567
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 569
    :cond_5
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    goto :goto_6

    .line 572
    :cond_6
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    :goto_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->hideProcessDialog()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_2
        0x4d -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMemberSelectionScreen()V
    .locals 6

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 453
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    .line 455
    const-string v0, "Search Member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    .line 467
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 474
    :cond_1
    const-string v0, "All the members in this family have their phone number updated."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addMobileVerificationScreen()V
    .locals 6

    .line 581
    const-string v0, "mobileNumberVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x1

    .line 582
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 583
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 585
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 587
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setLoopCounter(I)V

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v2, "mobileNumber"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->headerText:Landroid/widget/TextView;

    const-string v2, "Mobile Number"

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->headerText:Landroid/widget/TextView;

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-static {v0, v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 598
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 659
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->isDefaultMobileNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 665
    :cond_4
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->isDefaultMobileNumber:Ljava/lang/Boolean;

    .line 667
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 304
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    .line 357
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 359
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    .line 360
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 359
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

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

    .line 364
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 367
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->spinner:Landroid/widget/Spinner;

    .line 368
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 370
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 372
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 373
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 374
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->hideProcessDialog()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 282
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V

    .line 294
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure to close Mobile verification?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 297
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showNotOnlineMessage()V

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_15

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "mobileNumberVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 234
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    .line 235
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_8

    .line 236
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v2, :cond_7

    .line 237
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 238
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->isYesChecked:Z

    if-eqz p1, :cond_6

    .line 239
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMobileVerificationScreen()V

    goto/16 :goto_3

    .line 241
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMemberSelectionScreen()V

    goto/16 :goto_3

    .line 244
    :cond_7
    const-string p1, "Please Select an option"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 247
    :cond_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMobileVerificationScreen()V

    goto/16 :goto_3

    .line 218
    :pswitch_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedMemberIndex:I

    if-eq p1, v2, :cond_9

    .line 219
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBeans:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedMemberIndex:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 221
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 222
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 223
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->isDefaultMobileNumber:Ljava/lang/Boolean;

    .line 224
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMemberDetailsScreen()V

    goto/16 :goto_3

    .line 226
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 227
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    :cond_a
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 204
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedFamilyIndex:I

    if-eq p1, v2, :cond_b

    .line 205
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 206
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedFamilyIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 207
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 208
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->retriveMemberListFromDB()V

    goto/16 :goto_3

    .line 210
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 211
    const-string p1, "Please Select a Family"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 213
    :cond_c
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 191
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 193
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 194
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationId:Ljava/lang/String;

    .line 198
    :cond_e
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 199
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 200
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addSearchTextBox()V

    .line 201
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->retrieveFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 251
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 252
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto/16 :goto_2

    .line 255
    :cond_f
    const-string p1, "^\\d{10}$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_10

    .line 256
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v0, "Mobile number must contain 10 digits."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 260
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter verification code to continue. If you have still not received the verification code, try after some time."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 261
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    .line 262
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v0, "The mobile number is not yet verified. Please verify the mobile number to continue."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 264
    :cond_12
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->otpQuestionBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 265
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v0, "The mobile number is not yet verified. Please change the mobile number to continue."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 268
    :cond_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 269
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 270
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->mobileNumberUpdationBean()V

    .line 271
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->retriveMemberListFromDB()V

    goto :goto_3

    .line 253
    :cond_14
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v0, "Please Enter Mobile Number"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dd497ae -> :sswitch_4
        -0x13a69534 -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
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

    .line 124
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 765
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationId:Ljava/lang/String;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->limit:I

    int-to-long v3, v3

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification(Ljava/lang/CharSequence;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 766
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    .line 767
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 760
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->onLoadMoreBackground()V

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

    .line 772
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    .line 775
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 776
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 705
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 712
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_8

    .line 713
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "mobileNumberVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 738
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 739
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 740
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedMemberIndex:I

    .line 741
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMemberSelectionScreen()V

    goto :goto_2

    .line 731
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 732
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 733
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedFamilyIndex:I

    .line 734
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addSearchTextBox()V

    .line 735
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->retrieveFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 718
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 719
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 720
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 721
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 723
    :cond_7
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->screen:Ljava/lang/String;

    .line 724
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 725
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addVillageSelectionSpinner()V

    .line 726
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 715
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 745
    :pswitch_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 746
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showProcessDialog()V

    .line 747
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 748
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMemberDetailsScreen()V

    :goto_2
    return v1

    :cond_8
    return v2

    .line 708
    :cond_9
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dd497ae -> :sswitch_4
        -0x13a69534 -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
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

    .line 132
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setContentView(Landroid/view/View;)V

    .line 136
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->finish()V

    .line 143
    :cond_1
    const-string v0, "Mobile Number Verification"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/CharSequence;)V
    .locals 9

    .line 384
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->searchString:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    const/4 v1, -0x1

    .line 386
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->selectedFamilyIndex:I

    .line 387
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationId:Ljava/lang/String;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->limit:I

    int-to-long v5, v1

    int-to-long v7, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification(Ljava/lang/CharSequence;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBeans:Ljava/util/List;

    .line 388
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->limit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->offset:I

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addFamilySelectionScreen()V

    return-void
.end method

.method public retriveMemberListFromDB()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeanForMobileNumberUpdation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->memberDataBeans:Ljava/util/List;

    .line 447
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMemberSelectionScreen()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationId:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->retrieveFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method
