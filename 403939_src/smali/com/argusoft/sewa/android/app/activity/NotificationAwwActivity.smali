.class public Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NotificationAwwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final AREA_SELECTION_SCREEN:Ljava/lang/String; = "AreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final NOTIFICATION_SELECTION_SCREEN:Ljava/lang/String; = "NotificationSelectionScreen"

.field private static final NOTIFICATION_TYPE_SELECTION_SCREEN:Ljava/lang/String; = "NotificationTypeSelectionScreen"

.field private static final REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;


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

.field immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

.field private limit:J

.field private listTitle:Lcom/google/android/material/textview/MaterialTextView;

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

.field private nextButton:Landroid/widget/Button;

.field private noNotificationTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private notificationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationCode:Ljava/lang/String;

.field private notificationCodeWithRadioButtonIdMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field private notificationsCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screenName:Ljava/lang/String;

.field private searchBox:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchtring:Ljava/lang/CharSequence;

.field private selectedAreaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private selectedNotificationCode:Ljava/lang/String;

.field private selectedNotificationIndex:I

.field private selectedVisitIndex:I

.field private serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation
.end field

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const-wide/16 v0, 0x1e

    .line 85
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedVisitIndex:I

    .line 104
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Ljava/util/Timer;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedVisitIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedVisitIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;J)J
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->setMetadataForFormByFormType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/Integer;
    .locals 1

    .line 67
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    return-object v0
.end method

.method private addNotificationForLoop(Ljava/util/List;)Ljava/util/List;
    .locals 12
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

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
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

    .line 380
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeansMapByActualIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 391
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 392
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-nez v4, :cond_3

    goto :goto_1

    .line 397
    :cond_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 398
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v1

    .line 400
    :cond_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Visit"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    :cond_5
    new-instance v11, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object v5, v11

    move-object v6, v1

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 184
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 185
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 186
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->nextButton:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->footerView:Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->setBodyDetail()V

    return-void
.end method

.method private setMetadataForFormByFormType(Ljava/lang/String;)V
    .locals 7

    .line 409
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_0

    .line 411
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 412
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private startDynamicFormActivity()V
    .locals 3

    .line 439
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 440
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Landroid/content/Intent;)V

    .line 452
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->start()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 209
    const-string v0, "AreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->screenName:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 214
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 216
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

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

    .line 217
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 220
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Asha Area"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->hideProcessDialog()V

    return-void
.end method

.method public addNotificationScreen(Z)V
    .locals 3

    .line 348
    const-string p1, "NotificationSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->screenName:Ljava/lang/String;

    .line 349
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->listTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 351
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->noNotificationTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 352
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 355
    const-string p1, "Select notification"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->listTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addNotificationForLoop(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 359
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)V

    .line 365
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 369
    :cond_0
    const-string p1, "No notifications! Thank you for doing your work."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->noNotificationTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->hideProcessDialog()V

    return-void
.end method

.method public addNotificationTypeScreen()V
    .locals 6

    .line 295
    const-string v0, "NotificationTypeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->screenName:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->serviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->serviceList:Ljava/util/List;

    .line 301
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 302
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "AWW_CS"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationsCountMap:Ljava/util/Map;

    .line 303
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)V

    .line 324
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->serviceList:Ljava/util/List;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "Member Id or Name to Search"

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 240
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const-wide/16 v0, 0x0

    .line 457
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    .line 458
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 459
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    .line 462
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    const/4 p2, -0x1

    .line 463
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationIndex:I

    if-eqz p1, :cond_0

    .line 464
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 466
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 467
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addSearchTextBox()V

    .line 468
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addNotificationScreen(Z)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 471
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->retrieveCountsForEachNotificationType()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 474
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->navigateToHomeScreen(Z)V

    .line 475
    const-class p2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 419
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)V

    .line 432
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Your Schedule?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_9

    .line 139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "NotificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-string v0, "AreaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    :goto_0
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 150
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 157
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 161
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->retrieveCountsForEachNotificationType()V

    goto :goto_4

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 169
    :cond_6
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 170
    const-string p1, "Please select a task"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 174
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->startDynamicFormActivity()V

    goto :goto_4

    .line 166
    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->navigateToHomeScreen(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 9

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->searchtring:Ljava/lang/CharSequence;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 534
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    .line 535
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 523
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 540
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addNotificationForLoop(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 543
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 484
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "AreaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "NotificationTypeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "NotificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 493
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->finish()V

    goto :goto_3

    .line 496
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 497
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->finish()V

    goto :goto_2

    .line 498
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 499
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->finish()V

    goto :goto_2

    .line 501
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 502
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addAshaAreaSelectionSpinner()V

    .line 504
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_3

    :pswitch_2
    const-wide/16 v4, 0x0

    .line 507
    iput-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    .line 508
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedVisitIndex:I

    .line 509
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->showProcessDialog()V

    .line 510
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->retrieveCountsForEachNotificationType()V

    .line 511
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return v1

    :cond_6
    return v2

    .line 486
    :cond_7
    :goto_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0xc717773 -> :sswitch_2
        0x27fe5373 -> :sswitch_1
        0x6228a8ab -> :sswitch_0
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

    .line 122
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 123
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->finish()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->setContentView(Landroid/view/View;)V

    .line 133
    :cond_1
    const-string v0, "Today\'s Notifications"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationsCountMap:Ljava/util/Map;

    .line 231
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method public retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 10

    .line 331
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->searchtring:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 332
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedNotificationIndex:I

    .line 333
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationCode:Ljava/lang/String;

    const-wide/16 v8, 0x0

    .line 335
    :try_start_0
    iput-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    .line 336
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    const/4 v2, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->notificationBeanList:Ljava/util/List;

    .line 337
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    const-class v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 343
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addNotificationScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->selectedAreaIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->retrieveCountsForEachNotificationType()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method
