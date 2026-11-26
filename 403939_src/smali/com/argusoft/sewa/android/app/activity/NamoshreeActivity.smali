.class public Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NamoshreeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field public static final COUNT_DETAILS_SCREEN:Ljava/lang/String; = "countDetailsScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final PREGNANT_WOMEN_SCREEN:Ljava/lang/String; = "pregnantWomenScreen"

.field private static final REQUEST_CODE_FOR_NAMOSHREE_ACTIVITY:I = 0x258

.field private static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private abortionCountEditText:Landroid/widget/EditText;

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

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private final limit:J

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field private memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private pregnantWomen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private prevAbortionYesOrNo:Landroid/widget/RadioGroup;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMemberIndex:I

.field private selectedTypeIndex:I

.field private selectedVillage:Ljava/lang/Integer;

.field private selectedVillages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

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

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillages:Ljava/util/List;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedAshaAreas:Ljava/util/List;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    const/4 v1, -0x1

    .line 110
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    .line 111
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const-wide/16 v1, 0x1e

    .line 112
    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->limit:J

    .line 116
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->timer:Ljava/util/Timer;

    .line 118
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->searchString:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->prevAbortionYesOrNo:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showConfirmationDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/EditText;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->abortionCountEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Ljava/util/Timer;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method private addMemberList(Ljava/util/List;)Ljava/util/List;
    .locals 10
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

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 700
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 701
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 702
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 704
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "FHW_NS"

    invoke-virtual {v3, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 705
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private addRejectedMemberList(Ljava/util/List;)Ljava/util/List;
    .locals 10
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

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 714
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 715
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 716
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNamoshreeRejectionComment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 717
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNamoshreeRejectionComment()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 718
    :cond_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNamoshreeDistRejectionComment()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v7, v2

    .line 719
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 721
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "FHW_NS"

    invoke-virtual {v3, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 722
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private addWrongPregRegWomenList(Ljava/util/List;)Ljava/util/List;
    .locals 10
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

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 731
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 733
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 735
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "FHW_NS"

    invoke-virtual {v3, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 736
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private fetchPendingNamoshreeMembersFromQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    const-string v1, "PendingNamoshree"

    const-string v2, "fetchInfo"

    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 649
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 650
    const-string v4, ","

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 651
    const-string v4, "locationId"

    invoke-virtual {v3, v4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string p1, "searchString"

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance p2, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "pending_namoshree_members_list"

    const/4 v5, 0x0

    .line 655
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p2, v4, v6, v3, v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 654
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_6

    .line 660
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 661
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/LinkedHashMap;

    .line 662
    const-string v3, "unique_health_id"

    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p2, :cond_3

    goto :goto_0

    .line 668
    :cond_3
    :try_start_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 675
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByHealthId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 677
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 680
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error retrieving member for ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 670
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid member ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u2705 Total members fetched: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 685
    :cond_6
    const-string p1, "Query executed successfully but returned 0 rows (empty result)."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    .line 645
    :cond_7
    :goto_2
    const-string p1, "No location IDs provided."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    .line 691
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error in fetching members: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 689
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Network/Server error: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object v0
.end method

.method private getMemberListFromDataBase()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    const-string v2, "namoshreeRejectionReason"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesByField(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillages:Ljava/util/List;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->offset:J

    iget v6, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ge v6, v11, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-ne v6, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    const-wide/16 v6, 0x1e

    move v10, v12

    invoke-virtual/range {v2 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaAreaByEligibleScheme(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJZZ)Ljava/util/List;

    move-result-object v2

    .line 467
    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->offset:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->offset:J

    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 470
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 473
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v9, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-nez v9, :cond_3

    .line 475
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v9}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 477
    :cond_3
    invoke-direct {p0, v8, v9, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->shouldIncludeMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 479
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v9, v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 480
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEdd()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 481
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 483
    :cond_4
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 489
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 493
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v5

    if-gez v4, :cond_6

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 147
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 148
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 149
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    .line 153
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setBodyDetail()V

    return-void
.end method

.method private isEligibleForScheme(Lcom/argusoft/sewa/android/app/model/MemberBean;Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Z
    .locals 3

    .line 514
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 515
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object p2

    const-string v0, "None"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 516
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 517
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-gt p2, v2, :cond_5

    :cond_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 519
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 520
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-le p2, p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private isNamoshreeEligible(Lcom/argusoft/sewa/android/app/model/MemberBean;Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Z
    .locals 3

    .line 538
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsUploadedPregIds()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 543
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 544
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 549
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNoneSelectionCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNoneSelectionCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_4

    .line 550
    :cond_1
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedDist()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedDist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 551
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedMo()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedMo()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private isRejectedMember(Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 531
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedMo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectionCmtMo()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 533
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedDist()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectionCmtDist()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isUploadingFirstTimeEligible(Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Z
    .locals 1

    .line 525
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic lambda$showConfirmationDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 339
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private shouldIncludeMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 501
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 505
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->isEligibleForScheme(Lcom/argusoft/sewa/android/app/model/MemberBean;Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Z

    move-result p1

    return p1

    :cond_2
    if-nez v1, :cond_5

    .line 507
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->isUploadingFirstTimeEligible(Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Z

    move-result p3

    if-eq v4, p3, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->isNamoshreeEligible(Lcom/argusoft/sewa/android/app/model/MemberBean;Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    return v2

    .line 509
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->isRejectedMember(Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method private showConfirmationDialog()V
    .locals 4

    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    const-string v1, "Confirm Submission"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 328
    const-string v1, "Do you want to submit the form?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 330
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x2

    .line 344
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 347
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 7

    .line 744
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSubTitle(Ljava/lang/String;)V

    .line 745
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 762
    const-string v0, "entity"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x258

    .line 763
    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 764
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    return-void

    .line 749
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$3;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 756
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 757
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 758
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 384
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 386
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

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

    .line 387
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 390
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 391
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSubTitle(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 357
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

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

    .line 358
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 362
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 363
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 376
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method public generateNamoshreeDetailAnswerString(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 2

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    const-string v1, "-4!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~29!"

    .line 954
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getServerDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 957
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getServerDate()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 956
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "~9027!"

    .line 958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPrevAbortion()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "~9026!"

    .line 961
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAbortionCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "~"

    .line 964
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->storeNamoshreeForm(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$3$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/view/View;)V
    .locals 1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 399
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 400
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->finish()V

    goto :goto_0

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$10$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 610
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$11$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 623
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$12$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 627
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$5$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 572
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$6$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 576
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$7$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 589
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$8$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 593
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$pregnantWomenSelectionScreen$9$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 606
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setSelectionType$4$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 426
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 427
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    .line 428
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 429
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSubTitle(Ljava/lang/String;)V

    .line 430
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 431
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->searchTextBox()V

    .line 432
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->retrievePregnantWomenList(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showConfirmationDialog$1$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->generateNamoshreeDetailAnswerString(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 332
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 334
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->searchTextBox()V

    const/4 p1, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->retrievePregnantWomenList(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$showCountDetailsAndQuestionScreen$0$com-argusoft-sewa-android-app-activity-NamoshreeActivity(Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 0
    const/16 p3, 0x2712

    if-ne p4, p3, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_1

    .line 270
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setPrevAbortion(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 276
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setPrevAbortion(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 809
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x258

    if-ne p1, p2, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 812
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 813
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->searchTextBox()V

    const/4 p1, 0x0

    .line 814
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->retrievePregnantWomenList(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 817
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    .line 818
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 397
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 407
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Namoshree?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 410
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_a

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "pregnantWomenScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 202
    :cond_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSubTitle(Ljava/lang/String;)V

    .line 204
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 207
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const/4 v1, 0x3

    const-string v2, "FHW_NS"

    if-ne v0, v1, :cond_2

    .line 208
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    const-string p1, "A form for this member has been already filled which is not synced with the server. Please refresh and try again."

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showAlertAndFinish(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showCountDetailsAndQuestionScreen()V

    goto/16 :goto_1

    .line 218
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_1

    .line 221
    :cond_3
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 178
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSubTitle(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 181
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillage:Ljava/lang/Integer;

    .line 186
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 189
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 193
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSelectionType()V

    :cond_a
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 2

    .line 878
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->getMemberListFromDataBase()Ljava/util/List;

    move-result-object v0

    .line 880
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->onLoadMoreUi(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 873
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 886
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 907
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addWrongPregRegWomenList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 910
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 912
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 898
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 900
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addRejectedMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 901
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 903
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 889
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 890
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 891
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 892
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 894
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 823
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 825
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 830
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_7

    .line 831
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const-string v4, "typeSelectionScreen"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "countDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "pregnantWomenScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 856
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 857
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setSelectionType()V

    .line 858
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    .line 859
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    goto :goto_3

    .line 851
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    goto :goto_3

    .line 833
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showProcessDialog()V

    .line 834
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 837
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 838
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 839
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addVillageSelectionSpinner()V

    goto :goto_2

    .line 840
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 841
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 843
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 844
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 845
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addVillageSelectionSpinner()V

    .line 847
    :goto_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    :goto_3
    return v1

    :cond_7
    return v2

    .line 826
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4754ad82 -> :sswitch_3
        -0x13a69534 -> :sswitch_2
        0x3315feed -> :sswitch_1
        0x6fa3b47f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setContentView(Landroid/view/View;)V

    .line 135
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->finish()V

    .line 142
    :cond_1
    const-string v0, "Namoshree"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public pregnantWomenSelectionScreen()V
    .locals 6

    .line 559
    const-string v0, "pregnantWomenScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 562
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 563
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedMemberIndex:I

    .line 564
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const-string v1, "Okay"

    const-string v2, "Next"

    const-string v3, "Select from list"

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    const/4 v4, 0x2

    const-string v5, "No member found in your area"

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 619
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 621
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 626
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 627
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 628
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 629
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addWrongPregRegWomenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 602
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 603
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 604
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 608
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 609
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 611
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v3, v0, v4, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 612
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 584
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addRejectedMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 586
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 587
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 592
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 594
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v3, v0, v4, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 595
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 569
    const-string v0, "No pregnant women in your area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 570
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 574
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 575
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 577
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v3, v0, v4, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 578
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    return-void
.end method

.method public retrievePregnantWomenList(Ljava/lang/String;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillages:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillage:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 445
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->offset:J

    .line 446
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->searchString:Ljava/lang/CharSequence;

    .line 447
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedTypeIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillages:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fetchPendingNamoshreeMembersFromQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->getMemberListFromDataBase()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomen:Ljava/util/List;

    .line 452
    :goto_0
    monitor-enter p0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->pregnantWomenSelectionScreen()V

    .line 454
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 769
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 771
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    .line 159
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->selectedVillage:Ljava/lang/Integer;

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->ashaAreaList:Ljava/util/List;

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setSelectionType()V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 417
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Member with no documents selected"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Member with selected documents"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Rejected Member List"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Member with wrong pregnancy registered"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Pending Namoshree Beneficiaries"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    .line 434
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->hideProcessDialog()V

    return-void
.end method

.method public showCountDetailsAndQuestionScreen()V
    .locals 5

    .line 232
    const-string v0, "countDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->screen:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "Member Id"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "Member Name"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "Gravida value"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "Delivery count"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getServerDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getServerDate()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 247
    :goto_0
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v4, "Service Date"

    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->prevAbortionYesOrNo:Landroid/widget/RadioGroup;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->prevAbortionYesOrNo:Landroid/widget/RadioGroup;

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2712

    invoke-static {v1, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->prevAbortionYesOrNo:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2713

    invoke-static {v1, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v2, "Have you had previous abortion?"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->prevAbortionYesOrNo:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v1, "Enter previous abortion count"

    invoke-static {v3, v3, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->abortionCountEditText:Landroid/widget/EditText;

    .line 267
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->prevAbortionYesOrNo:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public storeNamoshreeForm(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 922
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 923
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 924
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 925
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 926
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 927
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    .line 928
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 929
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 930
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 931
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 932
    sget-object p1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 934
    const-string p1, "FHW_NS"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 935
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMemberId(Ljava/lang/Long;)V

    .line 936
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 938
    new-instance v1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 941
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 942
    const-string v0, "P"

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 943
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 944
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 945
    const-string v0, "NAMOSHREE"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 947
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method
