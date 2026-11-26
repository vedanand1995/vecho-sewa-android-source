.class public Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MamtaDayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_CHILDREN:Ljava/lang/String; = "children"

.field private static final SERVICE_GAURAVI_DIWAS:Ljava/lang/String; = "gauraviDiwas"

.field private static final SERVICE_PREGNANT_WOMEN:Ljava/lang/String; = "pregnantWomen"

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"

.field private static final VISIT_SELECTION_SCREEN:Ljava/lang/String; = "visitSelectionScreen"


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

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private gson:Lcom/google/gson/Gson;

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

.field private memberMapWithActualIdAsKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private noWomanView:Lcom/google/android/material/textview/MaterialTextView;

.field private notificationCodeChild:Ljava/lang/String;

.field private notificationCodePregnantWomen:Ljava/lang/String;

.field private notificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private role:Ljava/lang/Long;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedAshaArea:Ljava/lang/String;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLocationId:Ljava/lang/Integer;

.field private selectedMemberIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedTypeIndex:I

.field private selectedVillage:Ljava/lang/Integer;

.field private textView:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Ljava/util/Timer;

.field private villageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaAreas:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->gson:Lcom/google/gson/Gson;

    .line 118
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->timer:Ljava/util/Timer;

    const-wide/16 v0, -0x1

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->role:Ljava/lang/Long;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedTypeIndex:I

    .line 121
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedMemberIndex:I

    const-wide/16 v0, 0x1e

    .line 122
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedMemberIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedLocationId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->startDynamicFormActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedTypeIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Landroid/widget/Button;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/util/Timer;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    return-object p0
.end method

.method private addAncDueNotificationList()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->noWomanView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 303
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeansMapByActualIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const-string v0, "Select a pregnant Women"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 312
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getWomenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 315
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 321
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 324
    :cond_2
    const-string v0, "No pregnant women in your area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->noWomanView:Lcom/google/android/material/textview/MaterialTextView;

    .line 325
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private addChildServicesDueNotificationList()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->noWomanView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 353
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeansMapByActualIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    const-string v0, "Select a Child"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 362
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getChildrenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 371
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 372
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 374
    :cond_2
    const-string v0, "No Children in your Area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->noWomanView:Lcom/google/android/material/textview/MaterialTextView;

    .line 375
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 552
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 554
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private addServiceSelectionScreen()V
    .locals 5

    .line 518
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Pregnant Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Children"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Gauravi Diwas"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 532
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->hideProcessDialog()V

    return-void
.end method

.method private getChildrenList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 383
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    :goto_1
    if-nez v2, :cond_1

    .line 392
    const-string v2, "Not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 394
    :cond_1
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v8, v2

    .line 396
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Mother"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getWomenList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 334
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    :cond_1
    const-string v1, "No TT Given"

    .line 339
    :cond_2
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 506
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 507
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 508
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 509
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 510
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 511
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    .line 513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->footerView:Landroid/widget/LinearLayout;

    .line 514
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addServiceSelectionScreen()V

    return-void
.end method

.method private setMetadataForFormByFormType(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 483
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;)V
    .locals 7

    .line 454
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    const-string v1, "villageSelectionScreen"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedLocationId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaArea:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setMetaDataForGauraviDiwasForm(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setMetadataForFormByFormType(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myIntent:Landroid/content/Intent;

    .line 477
    const-string v1, "entity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myIntent:Landroid/content/Intent;

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 479
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->hideProcessDialog()V

    return-void

    .line 463
    :catch_0
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$7;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 471
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Some error occurred. Please refresh and try again"

    .line 472
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 473
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 632
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 634
    const-string v1, "All"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 636
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 637
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 640
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 641
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$11;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 656
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->hideProcessDialog()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setSubTitle(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 607
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

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

    .line 608
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 612
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 613
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$10;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 626
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 627
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 540
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 541
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 543
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 544
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addServiceSelectionScreen()V

    .line 545
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->hideProcessDialog()V

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 168
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure you want to close Mamta Day Workplan?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 169
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->finish()V

    goto/16 :goto_5

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne v0, v2, :cond_f

    .line 177
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

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
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const-string v0, "children"

    const-string v5, "pregnantWomen"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 179
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedTypeIndex:I

    if-eq p1, v1, :cond_9

    if-nez p1, :cond_4

    .line 181
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-ne p1, v3, :cond_5

    .line 183
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne p1, v2, :cond_8

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 188
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedVillage:Ljava/lang/Integer;

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->ashaAreaList:Ljava/util/List;

    .line 190
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_2

    .line 191
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_2

    .line 194
    :cond_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addVillageSelectionSpinner()V

    .line 196
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_5

    .line 200
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addSearchTextBox()V

    .line 203
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v4}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5

    .line 205
    :cond_9
    const-string p1, "Please select a type of service"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 209
    :pswitch_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedMemberIndex:I

    if-eq p1, v1, :cond_e

    .line 210
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 211
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v1, p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 212
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v1, 0x18

    if-eqz p1, :cond_b

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->role:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_a

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    const-string v0, "ASHA_ANC"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 217
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    const-string v0, "FHW_ANC"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    const-string v0, "FHW_WPD"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 220
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 221
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->role:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_c

    .line 222
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    const-string v0, "ASHA_CS"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 224
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    const-string v0, "FHW_CS"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    const-string v0, "FHW_VAE"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 230
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->visits:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_5

    .line 232
    :cond_e
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 236
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 237
    const-string p1, "GAURAVI_DIWAS"

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->startDynamicFormActivity(Ljava/lang/String;)V

    goto :goto_5

    .line 241
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_10

    .line 242
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :cond_10
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13a69534 -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 137
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedAshaAreas"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 140
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 139
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaAreas:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedVillageIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "role"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->role:Ljava/lang/Long;

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 144
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 143
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageIds:Ljava/util/List;

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 146
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 10

    .line 713
    :try_start_0
    const-string v0, "pregnantWomen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodePregnantWomen:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 716
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    .line 717
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onLoadMoreUi(Ljava/util/List;)V

    goto :goto_0

    .line 718
    :cond_0
    const-string v0, "children"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodeChild:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 720
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    .line 721
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onLoadMoreUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 707
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 733
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 734
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeansMapByActualIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 738
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 739
    const-string v0, "pregnantWomen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 740
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getWomenList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 741
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_1

    .line 742
    :cond_2
    const-string v0, "children"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 743
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->getChildrenList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 744
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_1

    .line 747
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 662
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 663
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 668
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 669
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

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
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "visitSelectionScreen"

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
    const-string v0, "gauraviDiwas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 671
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->finish()V

    goto :goto_2

    .line 691
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 692
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 693
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setSubTitle(Ljava/lang/String;)V

    .line 694
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedMemberIndex:I

    .line 695
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 696
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addSearchTextBox()V

    .line 697
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 675
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 676
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedTypeIndex:I

    .line 677
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 678
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addServiceSelectionScreen()V

    .line 679
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 683
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 684
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedTypeIndex:I

    .line 685
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 686
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addVillageSelectionSpinner()V

    .line 687
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return v1

    .line 664
    :cond_7
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b46ac39 -> :sswitch_4
        -0x13a69534 -> :sswitch_3
        0xe6d904d -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setContentView(Landroid/view/View;)V

    .line 155
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->finish()V

    .line 162
    :cond_1
    const-string v0, "Mamta Day"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 501
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setContentView(Landroid/view/View;)V

    .line 502
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 10

    .line 248
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->searchString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 249
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedMemberIndex:I

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->role:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 252
    const-string v0, "ASHA_ANC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodePregnantWomen:Ljava/lang/String;

    .line 253
    const-string v0, "ASHA_CS"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodeChild:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_0
    const-string v0, "FHW_ANC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodePregnantWomen:Ljava/lang/String;

    .line 256
    const-string v0, "FHW_CS"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodeChild:Ljava/lang/String;

    :goto_0
    const-wide/16 v0, 0x0

    .line 258
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    .line 259
    const-string v0, "pregnantWomen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodePregnantWomen:Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    goto :goto_1

    .line 261
    :cond_1
    const-string v0, "children"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->villageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationCodeChild:Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    .line 264
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setMemberSelectionScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMemberSelectionScreen(Ljava/lang/String;Z)V
    .locals 0

    .line 273
    const-string p2, "memberSelectionScreen"

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    .line 275
    const-string p2, "pregnantWomen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addAncDueNotificationList()V

    goto :goto_0

    .line 277
    :cond_0
    const-string p2, "children"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addChildServicesDueNotificationList()V

    .line 281
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->notificationList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Okay"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$3;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Next"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMetaDataForGauraviDiwasForm(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 489
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 490
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "serviceDate"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 492
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "locationId"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 495
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "ashaArea"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setVisitSelectionScreen(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    const-string v0, "visitSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->screen:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setSubTitle(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V

    .line 447
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->hideProcessDialog()V

    return-void
.end method
