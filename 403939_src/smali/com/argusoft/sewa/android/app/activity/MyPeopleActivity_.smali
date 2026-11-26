.class public final Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;
.super Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;
.source "MyPeopleActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;-><init>()V

    .line 52
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxForFamily()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showMDAorSideEffectsScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setFilariasisSideEffectsMemberSelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberSelectionScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiChildren(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiFamilies(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiFamiliesForFilaria(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMigratedMembers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMigratedFamily(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiFamiliesForLeprosy(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setManageFamilyMigrationsScreen()V

    return-void
.end method

.method static synthetic access$2101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addNewlyWedCoupleList()V

    return-void
.end method

.method static synthetic access$2201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addEligibleCoupleList()V

    return-void
.end method

.method static synthetic access$2301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addPregnantWomenList()V

    return-void
.end method

.method static synthetic access$2401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addPncMothersList()V

    return-void
.end method

.method static synthetic access$2501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addMentalHealthScreeningMemberList()V

    return-void
.end method

.method static synthetic access$2601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addElderlyCareMemberList()V

    return-void
.end method

.method static synthetic access$2701(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addChildsBelow5YearsList()V

    return-void
.end method

.method static synthetic access$2801(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addMemberListScreenForUpdateInfo()V

    return-void
.end method

.method static synthetic access$2901(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addFamilyListScreenForNewMember()V

    return-void
.end method

.method static synthetic access$3001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisits()V

    return-void
.end method

.method static synthetic access$3101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMigratedFamilyScreen(Z)V

    return-void
.end method

.method static synthetic access$3201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMigratedMembersScreen(Z)V

    return-void
.end method

.method static synthetic access$3301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberScreenForRchRegister()V

    return-void
.end method

.method static synthetic access$3401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showNotOnlineMessage()V

    return-void
.end method

.method static synthetic access$3501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    return-void
.end method

.method static synthetic access$3701(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3801(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$3901(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addGraph()V

    return-void
.end method

.method static synthetic access$4101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$4401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreEligibleCouples()V

    return-void
.end method

.method static synthetic access$4501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreNewlyWedCouples()V

    return-void
.end method

.method static synthetic access$4601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreMentalHealthScreeningMembers()V

    return-void
.end method

.method static synthetic access$4701(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreElderlyCareMembers()V

    return-void
.end method

.method static synthetic access$4801(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreSideEffectsMethod()V

    return-void
.end method

.method static synthetic access$4901(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMorePregnantWomenList()V

    return-void
.end method

.method static synthetic access$5001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMorePNCMothersList()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method static synthetic access$5101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreRCH()V

    return-void
.end method

.method static synthetic access$5201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreMembers()V

    return-void
.end method

.method static synthetic access$5301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreChildrenList()V

    return-void
.end method

.method static synthetic access$5401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreDptBooster2ChildrenList()V

    return-void
.end method

.method static synthetic access$5501(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreFamilies()V

    return-void
.end method

.method static synthetic access$5601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreFamiliesFilaria()V

    return-void
.end method

.method static synthetic access$5701(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMigratedMembers()V

    return-void
.end method

.method static synthetic access$5801(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMigratedFamily()V

    return-void
.end method

.method static synthetic access$5901(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreFamiliesLeprosy()V

    return-void
.end method

.method static synthetic access$6001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForUpdateBySearch(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$6101(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedFamilyList(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$6201(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedMembersList(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$6301(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$6401(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveRCHServicesProvidedToMember()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxOnline()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 70
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 71
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 72
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 73
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 74
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 75
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 76
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    .line 77
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    .line 78
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 79
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 81
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    const-string v0, "MyPeopleActivity_"

    const-string v1, "Could not create DAO memberBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;
    .locals 1

    .line 106
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;
    .locals 1

    .line 110
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 4

    .line 187
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addChildsBelow5YearsList()V
    .locals 4

    .line 439
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$28;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$28;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addElderlyCareMemberList()V
    .locals 4

    .line 427
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$27;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$27;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addEligibleCoupleList()V
    .locals 4

    .line 379
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$23;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$23;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addFamilyListScreenForNewMember()V
    .locals 4

    .line 463
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$30;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$30;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addGraph()V
    .locals 4

    .line 163
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addMemberListScreenForUpdateInfo()V
    .locals 4

    .line 451
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$29;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$29;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addMentalHealthScreeningMemberList()V
    .locals 4

    .line 415
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$26;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$26;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addNewlyWedCoupleList()V
    .locals 4

    .line 367
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$22;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$22;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addPncMothersList()V
    .locals 4

    .line 403
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$25;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$25;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addPregnantWomenList()V
    .locals 4

    .line 391
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$24;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$24;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 223
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBoxForFamily()V
    .locals 4

    .line 235
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBoxOnline()V
    .locals 4

    .line 211
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 4

    .line 175
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 9

    .line 591
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$40;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$40;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 559
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$38;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$38;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadMigratedFamily()V
    .locals 7

    .line 895
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$59;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$59;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMigratedMembers()V
    .locals 7

    .line 879
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$58;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$58;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreChildrenList()V
    .locals 7

    .line 815
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$54;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$54;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreDptBooster2ChildrenList()V
    .locals 7

    .line 831
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$55;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$55;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreElderlyCareMembers()V
    .locals 7

    .line 719
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$48;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$48;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreEligibleCouples()V
    .locals 7

    .line 671
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$45;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$45;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreFamilies()V
    .locals 7

    .line 847
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$56;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$56;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreFamiliesFilaria()V
    .locals 7

    .line 863
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$57;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$57;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreFamiliesLeprosy()V
    .locals 7

    .line 911
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$60;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$60;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreMembers()V
    .locals 7

    .line 799
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$53;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$53;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreMentalHealthScreeningMembers()V
    .locals 7

    .line 703
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$47;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$47;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreNewlyWedCouples()V
    .locals 7

    .line 687
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$46;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$46;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMorePNCMothersList()V
    .locals 7

    .line 767
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$51;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$51;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMorePregnantWomenList()V
    .locals 7

    .line 751
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$50;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$50;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreRCH()V
    .locals 7

    .line 783
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$52;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$52;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loadMoreSideEffectsMethod()V
    .locals 7

    .line 735
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$49;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$49;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->init_(Landroid/os/Bundle;)V

    .line 59
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1007
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onDestroy()V

    .line 1008
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 1009
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreUiChildren(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$16;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiFamilies(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$17;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiFamiliesForFilaria(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$18;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiFamiliesForLeprosy(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$21;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiMember(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$15;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiMigratedFamily(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$20;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiMigratedMembers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;",
            ">;)V"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$19;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V
    .locals 8

    .line 639
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$43;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$43;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 623
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$42;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$42;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 12

    .line 655
    new-instance v11, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$44;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v11

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$44;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    invoke-static {v11}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V
    .locals 8

    .line 975
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$64;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$64;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberListForUpdateBySearch(Ljava/lang/CharSequence;)V
    .locals 8

    .line 927
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$61;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$61;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMigratedFamilyList(Ljava/lang/Boolean;)V
    .locals 8

    .line 943
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$62;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$62;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMigratedMembersList(Ljava/lang/Boolean;)V
    .locals 8

    .line 959
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$63;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$63;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 11

    .line 607
    new-instance v10, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v10

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v10}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveRCHServicesProvidedToMember()V
    .locals 7

    .line 991
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$65;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$65;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 575
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$39;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$39;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setContentView(I)V

    .line 90
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 3

    .line 247
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$12;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setFilariasisSideEffectsMemberSelectionScreen(Z)V
    .locals 3

    .line 259
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setManageFamilyMigrationsScreen()V
    .locals 4

    .line 139
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMemberScreenForRchRegister()V
    .locals 4

    .line 511
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$34;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$34;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMemberSelectionScreen(Ljava/lang/String;Z)V
    .locals 2

    .line 271
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMigratedFamilyScreen(Z)V
    .locals 3

    .line 487
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$32;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$32;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMigratedMembersScreen(Z)V
    .locals 3

    .line 499
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$33;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$33;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 2

    .line 547
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 4

    .line 199
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServicesProvidedScreenForRchRegister(Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 535
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$36;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/Map;Ljava/lang/Boolean;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setVisitSelectionScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 475
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$31;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setVisits()V
    .locals 4

    .line 151
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 115
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showMDAorSideEffectsScreen()V
    .locals 4

    .line 127
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 4

    .line 523
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$35;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$35;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
