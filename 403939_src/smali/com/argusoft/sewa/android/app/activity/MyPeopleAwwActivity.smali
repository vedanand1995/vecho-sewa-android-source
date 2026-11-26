.class public Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MyPeopleAwwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final CHART_SELECTION_SCREEN:Ljava/lang/String; = "chartSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final MOTHER_OBJECT:Ljava/lang/String; = "Mother"

.field private static final NO_DATA_SCREEN:Ljava/lang/String; = "noDataScreen"

.field private static final PEOPLE_SELECTION_SCREEN:Ljava/lang/String; = "peopleSelectionScreen"

.field private static final REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_ADOLESCENT_GIRLS:Ljava/lang/String; = "adolescentGirls"

.field private static final SERVICE_CHILDREN:Ljava/lang/String; = "childrenOf0to6years"

.field private static final SERVICE_ELIGIBLE_MOTHERS:Ljava/lang/String; = "mothersWithLastDeliveryLessThan6Months"

.field private static final SERVICE_PREGNANT_WOMEN:Ljava/lang/String; = "pregnantWomen"

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final VISIT_SELECTION_SCREEN:Ljava/lang/String; = "visitSelectionScreen"


# instance fields
.field private areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private limit:J

.field private mapOfVisitFormWithRadioButtonId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedMemberIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedServiceIndex:I

.field private selectedVisitIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

.field public techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private visits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 111
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedServiceIndex:I

    const-wide/16 v1, 0x1e

    .line 114
    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    .line 119
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedMemberIndex:I

    .line 120
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedVisitIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setMetadataForFormByFormType(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/content/Intent;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/lang/Integer;
    .locals 1

    .line 72
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->startDynamicFormActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedServiceIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/widget/Button;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Ljava/util/Timer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedMemberIndex:I

    return p1
.end method

.method static synthetic access$902(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedVisitIndex:I

    return p1
.end method

.method private addAdolescentGirlsList()V
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "Select an Adolescent Girl"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 544
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getAdolescentGirlsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 547
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 553
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 554
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 557
    :cond_0
    const-string v0, "No adolescent girl in your area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 558
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private addChildsBelow6YearsList()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const-string v0, "Select a Child"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 600
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getChildrenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 602
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 608
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 609
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :cond_0
    const-string v0, "No child is younger than 6 years in your area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 613
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private addEligibleMothersList()V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "Select Mother"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 485
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getMothersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 487
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 493
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 494
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    :cond_0
    const-string v0, "No mother with last delivery date within 6 months in your area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 498
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private addPregnantWomenList()V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 505
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const-string v0, "Select a Pregnant Women"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->subtitleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 510
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getMothersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 519
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 520
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 523
    :cond_0
    const-string v0, "No pregnant women in your area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 524
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private getAdolescentGirlsList(Ljava/util/List;)Ljava/util/List;
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

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 569
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 571
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 573
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "actualId"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 575
    const-string v4, "+++++++++++++"

    invoke-virtual {v3}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    .line 580
    const-string v3, "Not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 582
    :cond_1
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 584
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "Mother"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getChildrenList(Ljava/util/List;)Ljava/util/List;
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

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 624
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 626
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 628
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "actualId"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 630
    const-string v4, "++++++++++++++++++"

    invoke-virtual {v3}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    .line 635
    const-string v3, "Not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 637
    :cond_1
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 639
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "Mother"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method private getMothersList(Ljava/util/List;)Ljava/util/List;
    .locals 9
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

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 532
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 151
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 152
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 153
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->footerView:Landroid/widget/LinearLayout;

    .line 157
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setBodyDetail()V

    return-void
.end method

.method private setMetadataForFormByFormType(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 707
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 708
    const-string v0, "MEMBER_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object p1

    .line 712
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v0, p2, p1, v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForMemberUpdateForm(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V

    :goto_0
    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;)V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 765
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myIntent:Landroid/content/Intent;

    .line 766
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$13;->start()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 327
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "Select Asha Area"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

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

    .line 333
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 336
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 337
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

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

    .line 340
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 341
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->hideProcessDialog()V

    return-void
.end method

.method public addGraph(Ljava/lang/String;)V
    .locals 4

    .line 320
    const-string p1, "chartSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 322
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 379
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addVisitSelectionScreen()V
    .locals 4

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->visits:Ljava/util/List;

    .line 298
    const-string v0, "childrenOf0to6years"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->visits:Ljava/util/List;

    const-string v1, "AWW_CS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->visits:Ljava/util/List;

    const-string v1, "AWW_WEIGHT_GROWTH_GRAPH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setVisitSelectionScreen()V

    goto :goto_0

    .line 305
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 311
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "This service is temporary blocked"

    const/16 v3, -0x69

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 779
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 780
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 781
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 782
    const-string p1, "peopleSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 783
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 784
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 785
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setVisitSelectionScreen()V

    .line 786
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 788
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 744
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 757
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close My People?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 760
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_16

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "peopleSelectionScreen"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "serviceSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "chartSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "visitSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "noDataScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 192
    :pswitch_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedServiceIndex:I

    if-eq v0, v7, :cond_a

    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_6

    goto :goto_2

    .line 204
    :cond_6
    const-string v0, "adolescentGirls"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    goto :goto_2

    .line 201
    :cond_7
    const-string v0, "mothersWithLastDeliveryLessThan6Months"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    goto :goto_2

    .line 198
    :cond_8
    const-string v0, "pregnantWomen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    goto :goto_2

    .line 195
    :cond_9
    const-string v0, "childrenOf0to6years"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    .line 209
    :goto_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addSearchTextBox()V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 215
    :cond_a
    const-string p1, "Please select a type of service"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 220
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 224
    :cond_b
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedMemberIndex:I

    if-eq p1, v7, :cond_c

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addVisitSelectionScreen()V

    goto/16 :goto_7

    .line 228
    :cond_c
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 221
    :cond_d
    :goto_3
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->navigateToHomeScreen(Z)V

    return-void

    .line 280
    :pswitch_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 283
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addSearchTextBox()V

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 285
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto/16 :goto_7

    .line 233
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 234
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedVisitIndex:I

    if-eq p1, v7, :cond_12

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "AWW_WEIGHT_GROWTH_GRAPH"

    const-string v2, "AWW_HEIGHT_GROWTH_GRAPH"

    sparse-switch v0, :sswitch_data_1

    :goto_4
    const/4 v4, -0x1

    goto :goto_5

    :sswitch_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    :sswitch_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    const/4 v4, 0x1

    goto :goto_5

    :sswitch_8
    const-string v0, "FHW_WPD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    :cond_10
    :goto_5
    packed-switch v4, :pswitch_data_1

    .line 269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 270
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->startDynamicFormActivity(Ljava/lang/String;)V

    goto :goto_6

    .line 266
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addGraph(Ljava/lang/String;)V

    goto :goto_6

    .line 263
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addGraph(Ljava/lang/String;)V

    goto :goto_6

    .line 239
    :pswitch_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "FHW_ANC"

    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->checkIfThereArePendingNotificationsForMember(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 240
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;Ljava/lang/String;)V

    .line 253
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some ANC alerts are pending for this Beneficiary. You will NOT be able to fill ANC after filling out WPD. Do you want to proceed?"

    const/16 v2, -0x97

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 256
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_6

    .line 258
    :cond_11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 259
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->startDynamicFormActivity(Ljava/lang/String;)V

    goto :goto_6

    .line 275
    :cond_12
    const-string p1, "Please Select a Visit"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    :cond_13
    :goto_6
    iput v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedVisitIndex:I

    goto :goto_7

    .line 180
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 182
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 183
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 187
    :cond_15
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setServiceSelectionScreen()V

    goto :goto_7

    .line 288
    :pswitch_8
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->navigateToHomeScreen(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->finish()V

    :cond_16
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6081dea9 -> :sswitch_5
        -0x308379e0 -> :sswitch_4
        0xe6d904d -> :sswitch_3
        0x13772d5a -> :sswitch_2
        0x6e53fa89 -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x93862df -> :sswitch_8
        0x49925e70 -> :sswitch_7
        0x568e18bf -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 130
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 10

    .line 855
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pregnantWomen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "adolescentGirls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "childrenOf0to6years"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "mothersWithLastDeliveryLessThan6Months"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    .line 861
    :pswitch_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 862
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->areas:Ljava/util/List;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 863
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    goto :goto_1

    .line 866
    :pswitch_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    invoke-virtual/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAdolescentGirlsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 867
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    goto :goto_1

    .line 870
    :pswitch_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    invoke-virtual/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow6YearsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 871
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    goto :goto_1

    .line 857
    :pswitch_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    invoke-virtual/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 858
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    .line 875
    :goto_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xa8de931 -> :sswitch_3
        0x33628055 -> :sswitch_2
        0x43072a61 -> :sswitch_1
        0x65ccef21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 849
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 880
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 881
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 882
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 883
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "pregnantWomen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "adolescentGirls"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "childrenOf0to6years"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "mothersWithLastDeliveryLessThan6Months"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 889
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getAdolescentGirlsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 892
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getChildrenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 886
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->getMothersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 896
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v4, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_3

    .line 898
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xa8de931 -> :sswitch_3
        0x33628055 -> :sswitch_2
        0x43072a61 -> :sswitch_1
        0x65ccef21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 794
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 795
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 800
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_7

    .line 801
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "peopleSelectionScreen"

    const-string v4, "ashaAreaSelectionScreen"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "serviceSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "chartSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "visitSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 828
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 830
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 832
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addAshaAreaSelectionSpinner()V

    .line 834
    :goto_2
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    goto :goto_3

    .line 818
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 819
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 820
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 821
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedServiceIndex:I

    .line 822
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setServiceSelectionScreen()V

    .line 823
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 803
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addVisitSelectionScreen()V

    goto :goto_3

    .line 806
    :pswitch_3
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 807
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showProcessDialog()V

    .line 808
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 809
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 810
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedMemberIndex:I

    const/4 p1, 0x0

    .line 811
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addSearchTextBox()V

    .line 813
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedService:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 814
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto :goto_3

    .line 838
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->navigateToHomeScreen(Z)V

    :goto_3
    return v1

    :cond_7
    return v2

    .line 796
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_4
        0xe6d904d -> :sswitch_3
        0x13772d5a -> :sswitch_2
        0x6e53fa89 -> :sswitch_1
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

    .line 135
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setContentView(Landroid/view/View;)V

    .line 139
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->finish()V

    .line 146
    :cond_1
    const-string v0, "My People"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 11

    const-wide/16 v0, 0x0

    .line 430
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    .line 431
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->searchString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedMemberIndex:I

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pregnantWomen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "adolescentGirls"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "childrenOf0to6years"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "mothersWithLastDeliveryLessThan6Months"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 439
    :pswitch_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->areas:Ljava/util/List;

    .line 440
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 442
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->areas:Ljava/util/List;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    const/4 v4, 0x0

    move-object v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    .line 443
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    goto :goto_1

    .line 446
    :pswitch_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAdolescentGirlsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    .line 447
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    goto :goto_1

    .line 450
    :pswitch_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow6YearsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    .line 451
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    goto :goto_1

    .line 435
    :pswitch_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberList:Ljava/util/List;

    .line 436
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->offset:J

    .line 455
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setMemberSelectionScreen(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0xa8de931 -> :sswitch_3
        0x33628055 -> :sswitch_2
        0x43072a61 -> :sswitch_1
        0x65ccef21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBodyDetail()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 165
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setServiceSelectionScreen()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setMemberSelectionScreen(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 460
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "pregnantWomen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "adolescentGirls"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "childrenOf0to6years"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "mothersWithLastDeliveryLessThan6Months"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 465
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addPregnantWomenList()V

    goto :goto_1

    .line 468
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addAdolescentGirlsList()V

    goto :goto_1

    .line 471
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addChildsBelow6YearsList()V

    goto :goto_1

    .line 462
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addEligibleMothersList()V

    .line 475
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->hideProcessDialog()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0xa8de931 -> :sswitch_3
        0x33628055 -> :sswitch_2
        0x43072a61 -> :sswitch_1
        0x65ccef21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 3

    .line 718
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 727
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/high16 p2, -0x10000

    .line 724
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const p2, -0xffff01

    .line 721
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 730
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 731
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 732
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p2, -0x100

    .line 733
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 734
    :cond_3
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 735
    const-string p2, "#20aa0b"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 737
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 5

    .line 352
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    const-string v1, "Select the type of Service"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Children (0-6 years)"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Pregnant Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Mothers (last delivery time less than 6 months)"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Adolescent Girls"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 370
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->hideProcessDialog()V

    return-void
.end method

.method public setVisitSelectionScreen()V
    .locals 5

    .line 650
    const-string v0, "visitSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->screen:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 654
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->visits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 655
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 666
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 7

    .line 673
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->hideProcessDialog()V

    .line 675
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    .line 687
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 688
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 690
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 691
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$11;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method
