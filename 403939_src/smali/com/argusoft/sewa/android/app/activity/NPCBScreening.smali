.class public Lcom/argusoft/sewa/android/app/activity/NPCBScreening;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NPCBScreening.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final LIMIT:J = 0x1eL

.field private static final LOCATION_SELECTION_SCREEN:Ljava/lang/String; = "locationSelectionScreen"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY:I = 0x12c


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

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

.field private nextButton:Landroid/widget/Button;

.field private noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

.field npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private questionTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;)Ljava/util/Timer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private convertToListItemData(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 308
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 310
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 309
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 311
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNcdConfFor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNcdConfFor()Ljava/lang/String;

    move-result-object v3

    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 317
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImtMemberNpcbStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private createSearchTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 213
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;)V

    return-object v0
.end method

.method private handleLocationSelection()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->showProcessDialog()V

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->addSearchTextBoxForMember()V

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_2
    const-string v0, "Please select location"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleMemberSelection()V
    .locals 3

    .line 186
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMemberIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 187
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 188
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImtMemberNpcbStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->startDynamicFormActivity()V

    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "National Program for Blindness Control screening for this member is already done"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "Please Select a Member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    :goto_0
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMemberIndex:I

    return-void
.end method

.method private initView()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->showProcessDialog()V

    .line 119
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->globalPanel:Landroid/widget/LinearLayout;

    .line 120
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setContentView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 125
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setBodyDetail()V

    return-void
.end method

.method private setBodyDetail()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setSubTitle(Ljava/lang/String;)V

    .line 131
    const-string v1, "locationSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-direct {v1, p0, v2, v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->hideProcessDialog()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 3

    .line 330
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForNPCBForms(Ljava/lang/Long;)V

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v1, "entity"

    const-string v2, "ASHA_NPCB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12c

    .line 334
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method addSearchTextBoxForMember()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "Search Member"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->createSearchTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-NPCBScreening(Landroid/view/View;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->navigateToHomeScreen(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->finish()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-NPCBScreening(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 285
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$2$com-argusoft-sewa-android-app-activity-NPCBScreening(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 298
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->navigateToHomeScreen(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 339
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 340
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 p2, 0x12c

    if-ne p1, p2, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->showProcessDialog()V

    .line 343
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->addSearchTextBoxForMember()V

    const/4 p1, 0x0

    .line 344
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 347
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 143
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;)V

    .line 153
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close National Program for Blindness Control Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 156
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setSubTitle(Ljava/lang/String;)V

    .line 163
    const-string p1, "locationSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->handleLocationSelection()V

    goto :goto_0

    .line 165
    :cond_0
    const-string p1, "memberSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->handleMemberSelection()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 99
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->initView()V

    return-void
.end method

.method onLoadMoreBackground()V
    .locals 7

    .line 381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 382
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchString:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    .line 381
    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->ashaRetrievingMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 383
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    .line 384
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->onLoadMoreBackground()V

    return-void
.end method

.method onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 389
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->convertToListItemData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 353
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->showProcessDialog()V

    .line 363
    const-string p1, "locationSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 365
    :cond_1
    const-string p1, "memberSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 366
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setBodyDetail()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2

    .line 356
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setContentView(Landroid/view/View;)V

    .line 108
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->finish()V

    .line 114
    :cond_1
    const-string v0, "National Program for Blindness Control Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 255
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    .line 256
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 257
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->selectedMemberIndex:I

    .line 258
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 259
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x1e

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    move-object v3, p1

    .line 258
    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->ashaRetrievingMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    .line 260
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->offset:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 261
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setMemberSelectionScreen(Ljava/lang/Boolean;)V

    return-void
.end method

.method setMemberSelectionScreen(Ljava/lang/Boolean;)V
    .locals 2

    .line 267
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->questionTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_2

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 277
    :cond_2
    const-string p1, "memberSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->screen:Ljava/lang/String;

    .line 279
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 280
    const-string p1, "Select Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->questionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->convertToListItemData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 284
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;)V

    .line 287
    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item_npcb:I

    invoke-static {p0, p1, v1, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 295
    :cond_3
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->hideProcessDialog()V

    return-void
.end method
