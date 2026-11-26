.class public Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NCDRegisterFHWActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MEMBER_LIST_SCREEN:Ljava/lang/String; = "memberListScreen"

.field private static final SCREENING_BREAST:Ljava/lang/String; = "breast"

.field private static final SCREENING_CERVICAL:Ljava/lang/String; = "cervical"

.field private static final SCREENING_DIABETES:Ljava/lang/String; = "diabetes"

.field private static final SCREENING_HYPERTENSION:Ljava/lang/String; = "hypertension"

.field private static final SCREENING_ORAL:Ljava/lang/String; = "oral"

.field private static final SCREENING_SELECTION_SCREEN:Ljava/lang/String; = "screeningSelectionScreen"

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

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private memberBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberListView:Landroid/widget/ListView;

.field ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

.field private nextButton:Landroid/widget/Button;

.field private screen:Ljava/lang/String;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedScreening:Ljava/lang/String;

.field private selectedVillage:Ljava/lang/Integer;

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedAshaAreas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedScreening:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Landroid/widget/Button;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addAshaAreaSelectionSpinner()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 202
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 204
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

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

    .line 205
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 208
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 209
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->hideProcessDialog()V

    return-void
.end method

.method private addBreastScreenedMemberList()V
    .locals 10

    .line 412
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 416
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 417
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 419
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSuspectedForBreastCancer()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSuspectedForBreastCancer()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    .line 421
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members have been suspected for breast cancer in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 429
    :cond_2
    const-string v0, "Suspected for Breast Cancer"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberListView:Landroid/widget/ListView;

    .line 433
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There are no members in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private addCervicalScreenedMemberList()V
    .locals 10

    .line 384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 389
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 391
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSuspectedForCervicalCancer()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSuspectedForCervicalCancer()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    .line 393
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members have been suspected for cervical cancer in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 400
    :cond_2
    const-string v0, "Suspected for Cervical Cancer"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberListView:Landroid/widget/ListView;

    .line 404
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There are no members in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private addHypertensionScreenedMemberList()V
    .locals 11

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 330
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 332
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSystolicBp()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDiastolicBp()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSystolicBp()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8c

    if-ge v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDiastolicBp()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-lt v3, v4, :cond_0

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    new-instance v10, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "Blood Pressure"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 336
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSystolicBp()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDiastolicBp()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSystolicBp()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDiastolicBp()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mmHg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 338
    :cond_2
    const-string v1, "Not available"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v9, v1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members have been suspected for hypertension in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 345
    :cond_4
    const-string v0, "Suspected for Hypertension"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberListView:Landroid/widget/ListView;

    .line 348
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There are no members in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private addOralScreenedMemberList()V
    .locals 10

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 361
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 363
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSuspectedForOralCancer()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSuspectedForOralCancer()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members have been suspected for oral cancer in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 372
    :cond_2
    const-string v0, "Suspected for Oral Cancer"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberListView:Landroid/widget/ListView;

    .line 376
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There are no members in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private addSuspectedDiabetesScreenedMemberList()V
    .locals 11

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 302
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 304
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getBloodSugar()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getBloodSugar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8c

    if-lt v3, v4, :cond_0

    .line 305
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    new-instance v10, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "Blood Sugar"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 307
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getBloodSugar()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Not available"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getBloodSugar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mg/dl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v9, v1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members have been suspected for diabetes in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 314
    :cond_3
    const-string v0, "Suspected for Diabetes"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberListView:Landroid/widget/ListView;

    .line 317
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "There are no members in your area"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private initView()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->showProcessDialog()V

    .line 101
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setContentView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 104
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->footerView:Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setBodyDetail()V

    return-void
.end method

.method private setScreeningSelectionScreen()V
    .locals 5

    .line 214
    const-string v0, "screeningSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberList:Ljava/util/ArrayList;

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 218
    const-string v0, "Select the type of Disease"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Suspected for Diabetes"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Suspected for Hypertension"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Suspected for Oral Cancer"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Suspected for Cervical Cancer"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Suspected for Breast Cancer"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)V

    .line 258
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public addVillageSelectionSpinner()V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 177
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 181
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 182
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Asha Area"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setSubTitle(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberListScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->showProcessDialog()V

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 136
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedVillage:Ljava/lang/Integer;

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedAshaAreas:Ljava/util/List;

    .line 143
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 145
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 149
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 156
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setScreeningSelectionScreen()V

    goto :goto_1

    .line 160
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setScreeningSelectionScreen()V

    .line 162
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 442
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 448
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "screeningSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "memberListScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 482
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_1

    .line 459
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    .line 461
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 463
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedVillage:Ljava/lang/Integer;

    .line 464
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    .line 465
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addVillageSelectionSpinner()V

    goto :goto_1

    .line 466
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 467
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v0, "Data not synced properly. Please refresh."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 476
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    .line 477
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addVillageSelectionSpinner()V

    goto :goto_1

    .line 451
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->showProcessDialog()V

    .line 453
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 455
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setScreeningSelectionScreen()V

    :goto_1
    return v1

    :cond_6
    return v2

    .line 444
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x252aa31c -> :sswitch_2
        -0x18001dbe -> :sswitch_1
        -0x13a69534 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setContentView(Landroid/view/View;)V

    .line 89
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->finish()V

    .line 96
    :cond_1
    const-string v0, "NCD Register"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveMemberList()V
    .locals 4

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->showProcessDialog()V

    .line 267
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedScreening:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMembersForNcdRegisterFhw(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->memberBeans:Ljava/util/List;

    .line 268
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setMemberListScreen()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    .line 114
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedVillage:Ljava/lang/Integer;

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->ashaAreaList:Ljava/util/List;

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setMemberListScreen()V
    .locals 3

    .line 273
    const-string v0, "memberListScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->screen:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->selectedScreening:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "oral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "diabetes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "cervical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "hypertension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "breast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 283
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addOralScreenedMemberList()V

    goto :goto_1

    .line 277
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addSuspectedDiabetesScreenedMemberList()V

    goto :goto_1

    .line 286
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addCervicalScreenedMemberList()V

    goto :goto_1

    .line 280
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addHypertensionScreenedMemberList()V

    goto :goto_1

    .line 289
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->addBreastScreenedMemberList()V

    .line 294
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->hideProcessDialog()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x524f37b3 -> :sswitch_4
        -0x3364c79a -> :sswitch_3
        -0x2bddbe15 -> :sswitch_2
        -0xe816dfd -> :sswitch_1
        0x342d4e -> :sswitch_0
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
