.class public Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NotificationAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final AREA_SELECTION_SCREEN:Ljava/lang/String; = "AreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final LIMIT:J = 0x1eL

.field private static final NOTIFICATION_SELECTION_SCREEN:Ljava/lang/String; = "NotificationSelectionScreen"

.field private static final NOTIFICATION_TYPE_SELECTION_SCREEN:Ljava/lang/String; = "NotificationTypeSelectionScreen"

.field private static final READ_ONLY_NOTIFICATION_SCREEN:Ljava/lang/String; = "ReadOnlyNotificationScreen"

.field private static final REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

.field private static final REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;


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

.field private isFromLogin:Z

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

.field private noNotificationAvailabelView:Lcom/google/android/material/textview/MaterialTextView;

.field private notificationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

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

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private screenName:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

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

.field private selectedNotificationTypeIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    const/16 v0, 0xc9

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 93
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->onClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationTypeIndex:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/Button;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;J)J
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationTypeIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationTypeIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/Integer;
    .locals 1

    .line 72
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    return-object p0
.end method

.method private addNotificationForLoop(Ljava/util/List;)Ljava/util/List;
    .locals 24
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

    move-object/from16 v0, p0

    .line 464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 467
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 468
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_1
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeansMapByActualIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 476
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 477
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v12, -0x1

    sparse-switch v10, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v10, "ASHA_PNC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v12, 0x2

    goto :goto_3

    :sswitch_1
    const-string v10, "ASHA_CS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v12, 0x1

    goto :goto_3

    :sswitch_2
    const-string v10, "ASHA_READ_ONLY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .line 547
    :goto_3
    const-string v9, " "

    const-string v10, "Visit"

    const-string v13, "0"

    const/4 v14, 0x0

    const-string v15, ""

    packed-switch v12, :pswitch_data_0

    if-nez v5, :cond_6

    .line 548
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 552
    :cond_6
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 553
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v7, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v15

    .line 555
    :cond_7
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_4

    :cond_8
    move-object v11, v14

    .line 558
    :goto_4
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v8, v14

    goto :goto_5

    :cond_9
    move-object v8, v15

    .line 559
    :goto_5
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_0
    if-nez v5, :cond_a

    .line 520
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 523
    :cond_a
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 524
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 528
    :cond_b
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 529
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v7, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v15

    .line 531
    :cond_c
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_6

    :cond_d
    move-object v11, v14

    .line 534
    :goto_6
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v8, v14

    goto :goto_7

    :cond_e
    move-object v8, v15

    :goto_7
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v10

    .line 535
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 534
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    if-nez v5, :cond_f

    .line 484
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 487
    :cond_f
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v12

    if-nez v12, :cond_10

    .line 488
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 492
    :cond_10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v11, -0x5

    .line 493
    invoke-virtual {v12, v6, v11}, Ljava/util/Calendar;->add(II)V

    .line 495
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 496
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 500
    :cond_11
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 501
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v7, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v15

    .line 503
    :cond_12
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    goto :goto_8

    :cond_13
    move-object/from16 v20, v14

    .line 506
    :goto_8
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v9, v10, v11, v14}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 507
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    .line 508
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 509
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 512
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "No Due Vaccines"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    :cond_15
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16

    move-object/from16 v17, v14

    goto :goto_a

    :cond_16
    move-object/from16 v17, v15

    :goto_a
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v18

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v19

    .line 515
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v9, 0x2

    sub-int/2addr v5, v9

    invoke-virtual {v8, v7, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const-string v21, "Due Vaccines"

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v23}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 514
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 539
    :pswitch_2
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 540
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 542
    :cond_17
    const-string v4, "Information"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 544
    :goto_b
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v5, v4, v14}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 563
    :cond_18
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d70c5df -> :sswitch_2
        0x2cdc84 -> :sswitch_1
        0x56ee471 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 205
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 206
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 207
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->footerView:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    .line 211
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setBodyDetail()V

    return-void
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private startDynamicFormActivity()V
    .locals 8

    .line 627
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 628
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->memberMapWithActualIdAsKey:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v1, :cond_0

    .line 632
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 633
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-object v1, v2

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v0, :cond_1

    .line 650
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    const-string v2, "entity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->hideProcessDialog()V

    return-void

    .line 636
    :catch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->hideProcessDialog()V

    .line 637
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$8;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    .line 644
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 645
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 646
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 7

    .line 237
    const-string v0, "AreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 243
    const-string v3, "All"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 245
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 246
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 249
    invoke-static {p0, v1, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-string v3, "Select Asha Area"

    invoke-static {v0, v0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addNotificationScreen(Z)V
    .locals 4

    .line 420
    const-string v0, "NotificationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->listTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->noNotificationAvailabelView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    .line 444
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationForLoop(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-string v3, "Select from list"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->listTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 446
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v3, "ASHA_READ_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 426
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-string v1, "No notifications! Thank you for doing your work."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->noNotificationAvailabelView:Lcom/google/android/material/textview/MaterialTextView;

    .line 427
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-nez p1, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->hideProcessDialog()V

    :cond_3
    return-void
.end method

.method public addNotificationTypeScreen()V
    .locals 12

    .line 324
    const-string v0, "NotificationTypeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v2, "ASHA_LMPFU"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v3, "ASHA_ANC"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v4, "ASHA_PNC"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v5, "ASHA_CS"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v6, "CMAM_FOLLOWUP"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v7, "ASHA_READ_ONLY"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationGroupCodes:Ljava/util/List;

    const-string v8, "MAMTA_DAY"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 341
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 342
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v11, -0x1

    invoke-direct {v9, v11, v10, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 345
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 346
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v9, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 349
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    const-string v9, "ASHA_HBNC"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 350
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 353
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ASHA_HBYC"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 354
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 361
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 362
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 365
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 366
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 369
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3, v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    .line 398
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    invoke-static {v3, v1, v4, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "ASHA_READ_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    const-string v0, "Member Id or Name to Search"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const-wide/16 v0, 0x0

    .line 659
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    .line 660
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 661
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    .line 664
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    if-eqz p2, :cond_0

    .line 665
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 666
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 667
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 668
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v0, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 669
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addSearchTextBox()V

    .line 670
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 671
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationScreen(Z)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 674
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveCountsForEachNotificationType()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 677
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->navigateToHomeScreen(Z)V

    .line 678
    const-class p3, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 680
    :cond_1
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationTypeScreen()V

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 607
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    .line 620
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Your Schedule?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 623
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v1, :cond_b

    .line 147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "ReadOnlyNotificationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "NotificationSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 150
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :goto_1
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 158
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 165
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveCountsForEachNotificationType()V

    goto :goto_5

    .line 192
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addSearchTextBox()V

    .line 196
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 174
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-nez p1, :cond_8

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a Notification"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASHA_READ_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 185
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showReadOnlyNotification()V

    goto :goto_5

    .line 187
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->startDynamicFormActivity()V

    goto :goto_5

    .line 175
    :cond_a
    :goto_4
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->navigateToHomeScreen(Z)V

    :cond_b
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xc717773 -> :sswitch_2
        0x114a0f59 -> :sswitch_1
        0x6228a8ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isFromLogin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->isFromLogin:Z

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 124
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 9

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->searchString:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    const/4 v1, 0x0

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 751
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 753
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    .line 754
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 741
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->onLoadMoreBackground()V

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

    if-eqz p1, :cond_0

    .line 759
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 761
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    .line 762
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationForLoop(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 763
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 689
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, -0x1

    .line 690
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationTypeIndex:I

    .line 691
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 696
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    if-ne p1, v1, :cond_8

    .line 697
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "NotificationTypeSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "ReadOnlyNotificationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "NotificationSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const-string p1, "Next"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 699
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->finish()V

    goto :goto_2

    .line 702
    :pswitch_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->isFromLogin:Z

    if-eqz p1, :cond_5

    .line 703
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->navigateToHomeScreen(Z)V

    return v2

    .line 706
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 707
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->finish()V

    goto :goto_1

    .line 708
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 709
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->finish()V

    goto :goto_1

    .line 711
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 712
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addAshaAreaSelectionSpinner()V

    .line 714
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 723
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 724
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 725
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 726
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addSearchTextBox()V

    .line 727
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_3
    const-wide/16 v0, 0x0

    .line 717
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    .line 718
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 719
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveCountsForEachNotificationType()V

    .line 720
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return v2

    :cond_8
    return v3

    .line 692
    :cond_9
    :goto_3
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->navigateToHomeScreen(Z)V

    return v2

    :sswitch_data_0
    .sparse-switch
        -0xc717773 -> :sswitch_3
        0x114a0f59 -> :sswitch_2
        0x27fe5373 -> :sswitch_1
        0x6228a8ab -> :sswitch_0
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

    .line 129
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setContentView(Landroid/view/View;)V

    .line 133
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->finish()V

    .line 140
    :cond_1
    const-string v0, "Today\'s Notifications"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method public retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 9

    const-wide/16 v7, 0x0

    .line 405
    iput-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    .line 406
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->searchString:Ljava/lang/CharSequence;

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    const/4 v1, 0x0

    const-wide/16 v5, 0x1e

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->notificationBeanList:Ljava/util/List;

    .line 409
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
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

    .line 415
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addNotificationScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 217
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->isFromLogin:Z

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 219
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveCountsForEachNotificationType()V

    goto :goto_1

    .line 223
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedAreaIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveCountsForEachNotificationType()V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->addAshaAreaSelectionSpinner()V

    :goto_1
    return-void
.end method

.method public showReadOnlyNotification()V
    .locals 3

    .line 569
    const-string v0, "ReadOnlyNotificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->screenName:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 571
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Mark as Read"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 574
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)V

    .line 593
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
