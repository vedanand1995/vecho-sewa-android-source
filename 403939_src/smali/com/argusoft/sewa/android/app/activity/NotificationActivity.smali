.class public Lcom/argusoft/sewa/android/app/activity/NotificationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;
    }
.end annotation


# static fields
.field private static final AMRUTPAN_MISSED_NOTIFICATION_SELECTION_SCREEN:Ljava/lang/String; = "amrutpanMissedNotificationSelectionScreen"

.field private static final CHILD_SELECTION_SCREEN:Ljava/lang/String; = "childSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final LIMIT:J = 0x1eL

.field private static final MIGRATION_REVERT_NOTIFICATION_SCREEN:Ljava/lang/String; = "migrationRevertNotificationScreen"

.field private static final NOTIFICATION_SELECTION_SCREEN:Ljava/lang/String; = "notificationSelectionScreen"

.field private static final NOTIFICATION_TYPE_SELECTION_SCREEN:Ljava/lang/String; = "notificationTypeSelectionScreen"

.field private static final READ_ONLY_NOTIFICATION_SCREEN:Ljava/lang/String; = "readOnlyNotificationScreen"

.field private static final REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY:Ljava/lang/Integer;

.field private static final REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

.field private static final REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "NotificationActivity"

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

.field private currentDueDate:Ljava/lang/Long;

.field private currentNotificationCode:Ljava/lang/String;

.field private currentNotificationId:Ljava/lang/Long;

.field private currentNotificationOtherDetails:Ljava/lang/String;

.field private currentScheduledDate:Ljava/lang/Long;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field public immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

.field private isFromLogin:Z

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private memberDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private notificationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationCodeWithRadioButtonIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
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

.field private search:Ljava/lang/CharSequence;

.field private searchBox:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedAmrutpanMissedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedAreaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private selectedNotificationCode:Ljava/lang/String;

.field private selectedVillageId:Ljava/lang/Integer;

.field private selectedVillageIds:Ljava/util/List;
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

.field private titleView:Lcom/google/android/material/textview/MaterialTextView;

.field versionDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    .line 100
    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY:Ljava/lang/Integer;

    const/16 v0, 0xc9

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 122
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->timer:Ljava/util/Timer;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/Integer;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/util/List;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/util/Timer;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private fetchAmrutpanMissedMembersFromServer(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    .line 1413
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    const-string v14, "AmrutpanMissedMembers"

    const-string v15, "fetchInfo"

    if-eqz v0, :cond_b

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    .line 1421
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1422
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    const-string v2, "locationId"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v0, v12, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v3, "AMRUTPAN_MISSED_NOTIFICATION"

    const/4 v4, 0x0

    .line 1426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 1425
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_1

    .line 1429
    :try_start_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v14

    goto/16 :goto_c

    :cond_1
    :goto_0
    if-eqz v5, :cond_a

    .line 1431
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1432
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1433
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1434
    const-string v2, "notification_id"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1435
    const-string v3, "notification_code"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1436
    const-string v4, "schedule_date"

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1437
    const-string v5, "due_on"

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1438
    const-string v6, "other_details"

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v1, :cond_8

    if-nez v2, :cond_2

    goto :goto_1

    .line 1445
    :cond_2
    :try_start_3
    instance-of v6, v1, Ljava/lang/Number;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v6, :cond_3

    :try_start_4
    move-object v6, v1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_2
    move-wide v9, v6

    .line 1446
    instance-of v6, v1, Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v6, :cond_4

    :try_start_6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_3
    move-wide v6, v1

    .line 1453
    :try_start_8
    iget-object v1, v12, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1455
    invoke-direct {v12, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->parseLong(Ljava/lang/Object;)J

    move-result-wide v17

    .line 1456
    invoke-direct {v12, v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->parseLong(Ljava/lang/Object;)J

    move-result-wide v19

    .line 1458
    new-instance v11, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v4, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1461
    const-string v1, ""

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_4

    :cond_5
    move-object v8, v1

    :goto_4
    if-eqz v0, :cond_6

    .line 1464
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v4

    move-wide v4, v6

    move-object v6, v8

    move-wide/from16 v7, v17

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-wide v14, v9

    move-wide/from16 v9, v19

    move-object v12, v11

    move-object v11, v0

    :try_start_a
    invoke-direct/range {v1 .. v11}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;JLjava/lang/String;JJLjava/lang/String;)V

    .line 1458
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_7
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    :goto_6
    move-object/from16 v2, v18

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-wide v14, v9

    .line 1468
    :goto_7
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving member for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_3
    move-object/from16 v17, v14

    move-object v2, v15

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid member ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object/from16 v12, p0

    move-object v15, v2

    move-object/from16 v14, v17

    goto/16 :goto_1

    :cond_8
    move-object/from16 v12, p0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v17, v14

    move-object v2, v15

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2705 Total members fetched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_a
    move-object/from16 v17, v14

    move-object v2, v15

    .line 1473
    const-string v0, "Query executed successfully but returned 0 rows (empty result)."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v17, v14

    :goto_9
    move-object/from16 v2, v17

    goto :goto_c

    :cond_b
    :goto_a
    move-object/from16 v17, v14

    move-object v2, v15

    .line 1417
    const-string v0, "No location IDs provided."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    return-object v13

    :catch_6
    move-exception v0

    .line 1479
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error in fetching members: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_9

    .line 1477
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Network/Server error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-object v13
.end method

.method private getListViewItemsForAmrutpanNotifications(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 1159
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1161
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    .line 1162
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getMember()Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1165
    :cond_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    .line 1166
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Visit"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getNotificationCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getNotificationCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getVisitDurationForAmrutpan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1169
    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v7, v2

    .line 1172
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getScheduledDate()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    .line 1173
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getDueOn()J

    move-result-wide v1

    invoke-static {v1, v2, v4, v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1174
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;
    .locals 23
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

    .line 1066
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 1070
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

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

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1069
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 1072
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 1075
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v12, -0x1

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v10, "FHW_CS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    const/4 v12, 0x4

    goto :goto_2

    :sswitch_1
    const-string v10, "READ_ONLY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x3

    goto :goto_2

    :sswitch_2
    const-string v10, "FMI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x2

    goto :goto_2

    :sswitch_3
    const-string v10, "MO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x1

    goto :goto_2

    :sswitch_4
    const-string v10, "MI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 1134
    :goto_2
    const-string v9, "0"

    const-string v10, "Visit"

    const/4 v13, 0x0

    const-string v14, " "

    packed-switch v12, :pswitch_data_0

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v4

    .line 1135
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1136
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_3

    :cond_6
    move-object/from16 v16, v13

    .line 1138
    :goto_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1140
    const-string v5, "AMRUTPAN"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1141
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getVisitDurationForAmrutpan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1142
    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    goto :goto_4

    .line 1146
    :cond_7
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FHW_PNC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1147
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_8
    :goto_4
    move-object/from16 v19, v13

    .line 1150
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move-object v15, v5

    invoke-direct/range {v15 .. v20}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1116
    :pswitch_0
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v4

    .line 1117
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1118
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_5

    :cond_9
    move-object/from16 v16, v13

    .line 1120
    :goto_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_6

    :cond_a
    move-object/from16 v19, v13

    .line 1123
    :goto_6
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8, v9, v10, v13}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1124
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 1125
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1126
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1129
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "No Due Vaccines"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1131
    :cond_c
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v8, 0x2

    sub-int/2addr v4, v8

    invoke-virtual {v7, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const-string v20, "Due Vaccines"

    move-object v15, v5

    invoke-direct/range {v15 .. v22}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1108
    :pswitch_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getHeader()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 1111
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "Information"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    :goto_8
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1081
    :pswitch_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 1082
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getMemberDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1083
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1085
    :cond_e
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Family ID"

    invoke-direct {v4, v6, v3, v5}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1089
    :pswitch_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 1093
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_f
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1096
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_10
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 1100
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_11
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4, v13}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x99c -> :sswitch_4
        0x9a2 -> :sswitch_3
        0x11062 -> :sswitch_2
        0x657b0cb5 -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 225
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 226
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 230
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 231
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setBodyDetail()V

    return-void
.end method

.method private isAmrutpanEnabled()Z
    .locals 5

    const-string v0, "amrutpanEnabled_"

    .line 537
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 542
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->versionDao:Lcom/j256/ormlite/dao/Dao;

    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 543
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-interface {v1, v3, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 544
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :catch_0
    move-exception v0

    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private onActivityResultBackgroundTask()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1265
    :try_start_0
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    const-wide/16 v2, 0x0

    .line 1266
    iput-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1267
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v9, 0x1e

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    .line 1268
    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    if-eqz v2, :cond_0

    .line 1269
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1271
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 1272
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 1273
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationSelectionScreen(Z)V

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v3, "AMRUTPAN_MISSED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1275
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1276
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1277
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 1278
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getAmrutpanMissedNotificationMembersFromServer(Ljava/util/List;Ljava/util/List;)V

    .line 1279
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 1282
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1285
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    .line 1286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private openSelfHelpGroupMemberForm()V
    .locals 8

    .line 383
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 386
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 390
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const-string v1, "FHW_ANC"

    goto :goto_0

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v4, -0xa

    .line 395
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v6, -0x13

    .line 397
    invoke-virtual {v4, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 398
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    const-string v1, "ADOLESCENT_HEALTH_SCREENING"

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, -0x5

    .line 403
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 404
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    const-string v1, "FHW_CS"

    :cond_2
    :goto_0
    move-object v6, v1

    .line 408
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-object v0, v1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    :cond_3
    if-eqz v1, :cond_4

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    const-string v2, "entity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void

    .line 411
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 415
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 416
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 417
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private parseLong(Ljava/lang/Object;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 1487
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1489
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 533
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

    .line 1200
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "FHW_SAM_AFTER_CMAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AMRUTPAN_MISSED"

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "SAM_SCREENING"

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v2, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    const-string v0, "AMRUTPAN"

    goto :goto_0

    .line 1209
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 1213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1215
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1216
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAmrutpanMissedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v1, :cond_4

    .line 1218
    invoke-virtual {p0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setMetaDataForAmrutpanMissingMembers(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 1221
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1223
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :cond_4
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1237
    const-string v2, "entity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1227
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 1231
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 1232
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    .line 1240
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method private startMRVaccinationForm()V
    .locals 7

    .line 372
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 374
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 375
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v2, "MR_VACCINATION"

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    const-string v1, "entity"

    const-string v2, "MR_VACCINATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 379
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 501
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 503
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 504
    const-string v0, "Select Asha Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 506
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 508
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 510
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

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

    .line 511
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 514
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 515
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 518
    :cond_1
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 520
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addChildSelectionScreen(Z)V
    .locals 6

    .line 931
    const-string p1, "childSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 932
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 933
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 935
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 946
    :cond_0
    const-string p1, "Select Beneficiary"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 947
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 949
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 955
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 956
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    invoke-static {v1, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 961
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 963
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void

    .line 936
    :cond_2
    :goto_1
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 937
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 939
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addLastUpdateLabel()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addNotificationSelectionScreen(Z)V
    .locals 6

    .line 876
    const-string v0, "notificationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 878
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 879
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    const-string v1, "Okay"

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v2, "FMI"

    const-string v3, "AMRUTPAN_UC"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_0

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    const-string v0, "Information"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_0

    .line 896
    :cond_2
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 898
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 900
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 905
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 906
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v5, "MI"

    .line 907
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v5, "MO"

    .line 908
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 909
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    invoke-static {v2, v4, v5, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_1

    .line 910
    :cond_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 911
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_1

    .line 913
    :cond_5
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v4, v5, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 915
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 920
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-nez p1, :cond_7

    .line 925
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    :cond_7
    return-void

    .line 880
    :cond_8
    :goto_3
    const-string v0, "No notifications! Thank you for doing your work."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 881
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 882
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_9

    .line 886
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    :cond_9
    return-void
.end method

.method public addNotificationTypeScreen()V
    .locals 8

    .line 553
    const-string v0, "notificationTypeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LMPFU"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 564
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 565
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NWC"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 570
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v6, "NEWLY_WED_COUPLES"

    .line 571
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FHW_ANC"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 576
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 577
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FHW_WPD"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 582
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 583
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FHW_PNC"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 588
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 589
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FHW_CS"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 594
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 595
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MR_VACCINATION"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 600
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 601
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MI"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 606
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 607
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MO"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 612
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 613
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FMI"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 618
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 619
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DISCHARGE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 624
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 625
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SAM_SCREENING"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 630
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 631
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->isAmrutpanEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AMRUTPAN"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 637
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 638
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AMRUTPAN_MISSED"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 643
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    const-string v4, "AMRUTPAN_MISSED"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AMRUTPAN_UC"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 649
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 650
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xf

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "CMAM_FOLLOWUP"

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 669
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 670
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {p0, v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v4, v6}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    .line 679
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "READ_ONLY"

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 681
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 682
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {p0, v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v4, v6}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x2

    .line 685
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "MAMTA_DAY"

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 687
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    const-string v6, "MAMTA_DAY"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x3

    .line 691
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "OTHER_SERVICES"

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 693
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    const-string v6, "OTHER_SERVICES"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x4

    .line 697
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "REPORTED_EVENT_BY_ASHA"

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 699
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    const-string v6, "REPORTED_EVENT_BY_ASHA"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x5

    .line 703
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "ADOLESCENT_HEALTH_SCREENING"

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SHG"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 710
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 711
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 778
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    invoke-static {v3, v0, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 780
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "MI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "MO"

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "FMI"

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "READ_ONLY"

    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 797
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->search:Ljava/lang/CharSequence;

    .line 798
    const-string v0, "Member Id or Name to Search"

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 799
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    .line 467
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 471
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 472
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    add-int/lit8 v5, v1, 0x1

    .line 473
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 475
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 476
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 493
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public getAmrutpanMissedNotificationMembersFromServer(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1394
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByParentIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1401
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1404
    :cond_1
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fetchAmrutpanMissedMembersFromServer(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1405
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->updateAmrutpanNotificationScreen(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1407
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error fetching notification members: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AmrutpanFetch"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->updateAmrutpanNotificationScreen(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$addChildSelectionScreen$7$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 940
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method synthetic lambda$addChildSelectionScreen$8$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 950
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 951
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    :cond_0
    return-void
.end method

.method synthetic lambda$addNotificationSelectionScreen$4$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 883
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method synthetic lambda$addNotificationSelectionScreen$5$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 901
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 902
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    :cond_0
    return-void
.end method

.method synthetic lambda$addNotificationSelectionScreen$6$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 918
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method synthetic lambda$addNotificationTypeScreen$3$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 715
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationCodeWithRadioButtonIdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 p2, 0x0

    .line 716
    iput-wide p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    if-nez p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    const-string p2, "Please select a Notification type"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 722
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "MAMTA_DAY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "AMRUTPAN_MISSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "REPORTED_EVENT_BY_ASHA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "OTHER_SERVICES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p4, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "MR_VACCINATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p4, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p4, 0x0

    .line 768
    :goto_0
    const-string p1, "selectedVillageIds"

    const-string p2, "selectedAshaAreas"

    packed-switch p4, :pswitch_data_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 769
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 770
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 771
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 772
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 773
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 724
    :pswitch_0
    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    const-class p5, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {p4, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 752
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 753
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 754
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 755
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getAmrutpanMissedNotificationMembersFromServer(Ljava/util/List;Ljava/util/List;)V

    .line 756
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 738
    :pswitch_2
    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    const-class p5, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity_;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {p4, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 731
    :pswitch_3
    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    const-class p5, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity_;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {p4, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 759
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 760
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 761
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 762
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 763
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 764
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 745
    :pswitch_5
    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    const-class p5, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {p4, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c5599c4 -> :sswitch_5
        -0x27982d75 -> :sswitch_4
        0x7d078cd -> :sswitch_3
        0x23305c62 -> :sswitch_2
        0x5b5a4d22 -> :sswitch_1
        0x7518dd23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$onBackPressed$11$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 1

    .line 1184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1186
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    .line 1187
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->finish()V

    goto :goto_0

    .line 1189
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onClick$0$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 1

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 322
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 323
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startDynamicFormActivity()V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$openSelfHelpGroupMemberForm$1$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 412
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 413
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setBodyDetail$2$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 436
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$showReadOnlyNotification$13$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 1

    .line 1299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1300
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 1301
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1302
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1303
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 1304
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 1305
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->markNotificationAsReadAndRetrieveData()V

    goto :goto_0

    .line 1309
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showReadOnlyNotification$14$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 2

    .line 1314
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Are you sure want to mark this notification as read?"

    const/16 v1, -0x97

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1317
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$startDynamicFormActivity$12$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 1228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$updateAmrutpanNotificationScreen$10$com-argusoft-sewa-android-app-activity-NotificationActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    if-ltz p4, :cond_0

    .line 986
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p4, p2, :cond_0

    .line 987
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getMember()Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAmrutpanMissedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 988
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getScheduledDate()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentScheduledDate:Ljava/lang/Long;

    .line 989
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getDueOn()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentDueDate:Ljava/lang/Long;

    .line 990
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getNotificationCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationCode:Ljava/lang/String;

    .line 991
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getNotificationId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationId:Ljava/lang/Long;

    .line 992
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->getOtherDetails()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationOtherDetails:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic lambda$updateAmrutpanNotificationScreen$9$com-argusoft-sewa-android-app-activity-NotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 978
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method public markNotificationAsReadAndRetrieveData()V
    .locals 8

    .line 1324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->markNotificationAsRead(Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V

    .line 1325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 1326
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v4, 0x1e

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1245
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1246
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-wide/16 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1248
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1249
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onActivityResultBackgroundTask()V

    goto :goto_0

    .line 1250
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 1251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1252
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1253
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1254
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 1255
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_0

    .line 1256
    :cond_1
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1257
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1259
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1183
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 1193
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Your Schedule?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_1a

    .line 237
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "migrationRevertNotificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "readOnlyNotificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "childSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "notificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "amrutpanMissedNotificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please select a task"

    const-string v8, "Next"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 347
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 348
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 349
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 350
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 351
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto/16 :goto_9

    .line 355
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 360
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-nez p1, :cond_7

    .line 361
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 364
    :cond_7
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startMRVaccinationForm()V

    goto/16 :goto_9

    .line 356
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    .line 357
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 283
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_5

    .line 289
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-nez p1, :cond_a

    .line 290
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_3
    const/4 v1, -0x1

    goto :goto_4

    :sswitch_6
    const-string v0, "READ_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_3

    :sswitch_7
    const-string v0, "SHG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_8
    const-string v0, "FMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_9
    const-string v0, "MO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_a
    const-string v0, "MI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_b
    const-string v0, "FHW_WPD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    .line 341
    :cond_10
    :goto_4
    const-string p1, "notificationBean"

    packed-switch v1, :pswitch_data_1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startDynamicFormActivity()V

    goto/16 :goto_9

    .line 316
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showReadOnlyNotification()V

    goto/16 :goto_9

    .line 338
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->openSelfHelpGroupMemberForm()V

    goto/16 :goto_9

    .line 309
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    const-class v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 313
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    goto/16 :goto_9

    .line 302
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    const-class v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 306
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    goto/16 :goto_9

    .line 295
    :pswitch_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    const-class v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    goto/16 :goto_9

    .line 319
    :pswitch_8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FHW_ANC"

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->checkIfThereArePendingNotificationsForMember(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 320
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 329
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some ANC alerts are pending for this Beneficiary. You will NOT be able to fill ANC after filling out WPD. Do you want to proceed?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 332
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto/16 :goto_9

    .line 334
    :cond_11
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startDynamicFormActivity()V

    goto/16 :goto_9

    .line 284
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    return-void

    .line 279
    :pswitch_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startDynamicFormActivity()V

    goto/16 :goto_9

    .line 239
    :pswitch_a
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 241
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v6, :cond_13

    .line 242
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 244
    :cond_13
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    :goto_6
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 248
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 249
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 250
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 251
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_15
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_19

    .line 259
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 262
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 263
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 270
    :cond_17
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 271
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 272
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 276
    :cond_19
    :goto_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveCountsForEachNotificationType()V

    :cond_1a
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13a69534 -> :sswitch_5
        0x16a6545a -> :sswitch_4
        0x1db0a0ad -> :sswitch_3
        0x3aed2c5c -> :sswitch_2
        0x4c747339 -> :sswitch_1
        0x589a5c29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x93862df -> :sswitch_b
        0x99c -> :sswitch_a
        0x9a2 -> :sswitch_9
        0x11062 -> :sswitch_8
        0x14092 -> :sswitch_7
        0x657b0cb5 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isFromLogin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->isFromLogin:Z

    .line 203
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 204
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 9

    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->search:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1026
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1027
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1029
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onLoadMoreBackgroundForMR()V
    .locals 9

    .line 1046
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->search:Ljava/lang/CharSequence;

    const-wide/16 v5, 0x1e

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeanForMRVaccinationDrive(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1047
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1048
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreUiMR(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-string v1, "MR_VACCINATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreBackgroundForMR()V

    goto :goto_0

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreBackground()V

    :goto_0
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

    .line 1035
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1037
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1038
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1040
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiMR(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1053
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1055
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1057
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2, v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_1

    .line 1061
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1331
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1337
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_b

    .line 1338
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "migrationRevertNotificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "readOnlyNotificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "childSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "notificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "amrutpanMissedNotificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "notificationTypeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_0
    const-string p1, "Next"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 1374
    :pswitch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1375
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1376
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    .line 1377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    .line 1378
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v6, 0x1e

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 1379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_1
    const-wide/16 v3, 0x0

    .line 1367
    iput-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1368
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 1369
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveCountsForEachNotificationType()V

    .line 1370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1340
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->finish()V

    goto :goto_2

    .line 1343
    :pswitch_3
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->isFromLogin:Z

    if-eqz p1, :cond_8

    .line 1344
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    return v1

    .line 1348
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 1349
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 1351
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 1352
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_1

    .line 1353
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1354
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->finish()V

    goto :goto_1

    .line 1356
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1357
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addVillageSelectionSpinner()V

    .line 1358
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 1360
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1361
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 1362
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 1384
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v1

    :cond_b
    return v2

    .line 1333
    :cond_c
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3ae8a46d -> :sswitch_6
        -0x13a69534 -> :sswitch_5
        0x16a6545a -> :sswitch_4
        0x1db0a0ad -> :sswitch_3
        0x3aed2c5c -> :sswitch_2
        0x4c747339 -> :sswitch_1
        0x589a5c29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setContentView(Landroid/view/View;)V

    .line 213
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->finish()V

    .line 220
    :cond_1
    const-string v0, "Today\'s Notifications"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 9

    const/4 p5, 0x0

    .line 863
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedChild:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 864
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->search:Ljava/lang/CharSequence;

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeanForMRVaccinationDrive(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->memberDataBeanList:Ljava/util/List;

    .line 867
    iget-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const-wide/16 v0, 0x1e

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 869
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 871
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addChildSelectionScreen(Z)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType()V
    .locals 3

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 529
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 9

    const/4 p5, 0x0

    .line 850
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 851
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->search:Ljava/lang/CharSequence;

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedAreaIds:Ljava/util/List;

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationBeanList:Ljava/util/List;

    .line 854
    iget-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    const-wide/16 v0, 0x1e

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 858
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationSelectionScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "notificationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Data not synced properly. Please refresh."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 437
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    return-void

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->isFromLogin:Z

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 445
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveCountsForEachNotificationType()V

    goto :goto_2

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "villageSelectionScreen"

    if-ne v0, v1, :cond_4

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 455
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 456
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_1

    .line 458
    :cond_4
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addVillageSelectionSpinner()V

    .line 461
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    :goto_2
    return-void
.end method

.method public setMetaDataForAmrutpanMissingMembers(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;)V
    .locals 7

    .line 1496
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1497
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1498
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1499
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1500
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "memberActualId"

    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1501
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "familyId"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "nameForLog"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "nameOfBeneficiary"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentScheduledDate:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "scheduledDate"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentDueDate:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "dueDate"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "visitNumber"

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationCode:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "missedNotification"

    const-string v6, "yes"

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    .line 1510
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "age"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dob"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1515
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1517
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "religion"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1521
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1523
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "caste"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    :cond_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1527
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1530
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locationId"

    if-eqz v3, :cond_3

    .line 1531
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1532
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1534
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1535
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationId:Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 1539
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationId:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notificationId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    :cond_4
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->currentNotificationOtherDetails:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1543
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->formatAmrutpanNotificationOtherDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    .line 1544
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1545
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "isAmrutpanOtherDetailAvailable"

    const-string v5, "Yes"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    :cond_5
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getLocationByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v1

    .line 1550
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "village"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v1

    .line 1552
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "subCentre"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v1

    .line 1554
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "phc"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "taluka"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "uniqueHealthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "childFirstName"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "childDOB"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1561
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1562
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    const-string v3, "gender"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    :cond_6
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 1565
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1566
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1567
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1568
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v3, Ljava/util/Date;

    .line 1570
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    const-string v1, "lastWeightDate"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v0

    const-string v1, " "

    if-eqz v0, :cond_8

    .line 1575
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthWeight"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Kgs"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthWeightDisplay"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthWeightDisplayInGrams"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1582
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "phoneNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyPhoneNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "motherHealthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "motherName"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1587
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_9
    const-string v0, ""

    .line 1588
    :goto_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "motherAge"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1590
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 1591
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getListValueById(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 1590
    const-string v2, "educationStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1594
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 1595
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "monthsOfPregnancy"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    :cond_b
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 1598
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1599
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1600
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 1601
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDeliveryPlace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1602
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "deliveryPlace"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDeliveryPlace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_c
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTypeOfDelivery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1605
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "typeOfDelivery"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTypeOfDelivery()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_d
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public showReadOnlyNotification()V
    .locals 3

    .line 1292
    const-string v0, "readOnlyNotificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Mark as Read"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    .line 1296
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->offset:J

    .line 1298
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    .line 1313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateAmrutpanNotificationScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;",
            ">;)V"
        }
    .end annotation

    .line 971
    const-string v0, "amrutpanMissedNotificationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->screenName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 973
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 983
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 985
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Ljava/util/List;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getListViewItemsForAmrutpanNotifications(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 998
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1006
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1007
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    .line 1008
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 974
    :cond_1
    :goto_0
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 975
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->hideProcessDialog()V

    .line 977
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
