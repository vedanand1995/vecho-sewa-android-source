.class public Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "ReportedEventConfirmationNotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

.field private static final SET_SERVICE_TYPE:Ljava/lang/String; = "setServiceType"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private gson:Lcom/google/gson/Gson;

.field private limit:J

.field private nextButton:Landroid/widget/Button;

.field private notificationCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMapWithCounter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMobDataBeans:Ljava/util/List;
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

.field private selectedMemeberIndex:I

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private selectedServiceIndex:I

.field private selectedVillageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private servicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedAshaAreas:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedVillageIds:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->gson:Lcom/google/gson/Gson;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    .line 77
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/NotificationConstants;->ASHA_REPORTED_EVENT_NOTIFICATIONS:Ljava/util/List;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->servicesList:Ljava/util/List;

    .line 81
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedMemeberIndex:I

    const-wide/16 v0, 0x1e

    .line 84
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->limit:J

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)Landroid/widget/Button;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedMemeberIndex:I

    return p1
.end method

.method private getList(Ljava/util/List;)Ljava/util/List;
    .locals 11
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

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMapWithCounter:Ljava/util/List;

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 246
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 247
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v6, v7, v5, v5, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v4

    .line 248
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    :cond_1
    move-object v2, v4

    goto :goto_1

    .line 252
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 255
    :goto_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 256
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v7, v5

    goto :goto_2

    .line 262
    :cond_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/FamilyBean;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 267
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v6, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 270
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 271
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_6

    .line 273
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v4

    move-object v8, v5

    goto :goto_2

    :cond_6
    move-object v8, v1

    move-object v7, v4

    .line 281
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMapWithCounter:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v9, 0x0

    move-object v5, v4

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 118
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 119
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 120
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->nextButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->showProcessDialog()V

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setServiceTypeScreen()V

    return-void
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private startConfirmationActivity()V
    .locals 9

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "FHW_MEMBER_MIGRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "FHW_PREG_CONF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "FHW_DEATH_CONF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "FHW_FAMILY_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "FHW_FAMILY_MIGRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "FHW_DELIVERY_CONF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const-string v1, "notification"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 323
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/argusoft/sewa/android/app/activity/FhwMemberMigrationConfirmationActivity_;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 302
    :pswitch_1
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 303
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    .line 302
    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v1

    .line 319
    const-string v3, "entity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 305
    :catch_0
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$5;

    invoke-direct {v7, p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)V

    .line 312
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 313
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, -0x69

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    .line 291
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/argusoft/sewa/android/app/activity/FhwDeathConfirmationActivity_;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 329
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity_;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 296
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity_;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    :goto_2
    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedMemeberIndex:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d7b4a5b -> :sswitch_5
        -0x7cbd0843 -> :sswitch_4
        -0x3b71c977 -> :sswitch_3
        -0x34606727 -> :sswitch_2
        -0x1287f8b -> :sswitch_1
        0x47fc1b73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 342
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->showProcessDialog()V

    .line 344
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->retrieveNotifications()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "setServiceType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedMemeberIndex:I

    if-eq p1, v1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMapWithCounter:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedMemeberIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 145
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startConfirmationActivity()V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMobDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setServiceTypeScreen()V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please Select a Member"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    if-eq p1, v1, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->showProcessDialog()V

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->retrieveNotifications()V

    goto :goto_0

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a task"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedAshaAreas"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)V

    .line 93
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedAshaAreas:Ljava/util/List;

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedVillageIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)V

    .line 96
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 95
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedVillageIds:Ljava/util/List;

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 98
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 10

    const/4 v0, 0x0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->servicesList:Ljava/util/List;

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :try_start_1
    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->limit:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 383
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    :goto_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 373
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->onLoadMoreBackground()V

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

    .line 390
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMobDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->getList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 350
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, -0x1

    .line 351
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedMemeberIndex:I

    .line 352
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->screen:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    if-ne p1, v1, :cond_3

    .line 358
    const-string p1, "memberSelectionScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->showProcessDialog()V

    .line 360
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    .line 362
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setServiceTypeScreen()V

    goto :goto_0

    .line 363
    :cond_1
    const-string p1, "setServiceType"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->finish()V

    :cond_2
    :goto_0
    return v2

    :cond_3
    return v3

    .line 353
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->navigateToHomeScreen(Z)V

    return v2
.end method

.method protected onResume()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setContentView(Landroid/view/View;)V

    .line 107
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->finish()V

    .line 114
    :cond_1
    const-string v0, "Events reported by ASHA"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveNotifications()V
    .locals 11

    const-wide/16 v0, 0x0

    .line 202
    :try_start_0
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J

    .line 203
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->servicesList:Ljava/util/List;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->limit:J

    iget-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMobDataBeans:Ljava/util/List;

    .line 204
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setMemberSelectionScreen()V

    .line 209
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 4

    .line 214
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->screen:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMobDataBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->servicesList:Ljava/util/List;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedServiceIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationMobDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->getList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)V

    .line 228
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 229
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    const-string v2, "No notifications."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public setServiceTypeScreen()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForAshaReportedEventNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 158
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->viewServiceTypeScreen()V

    return-void
.end method

.method public viewServiceTypeScreen()V
    .locals 6

    .line 167
    const-string v0, "setServiceType"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->screen:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "FHW_PREG_CONF"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 172
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "FHW_DELIVERY_CONF"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 174
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "FHW_DEATH_CONF"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 176
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "FHW_MEMBER_MIGRATION"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 178
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "FHW_FAMILY_MIGRATION"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 180
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    const-string v3, "FHW_FAMILY_SPLIT"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->notificationCountMap:Ljava/util/Map;

    .line 182
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;)V

    .line 193
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ReportedEventConfirmationNotificationActivity;->hideProcessDialog()V

    return-void
.end method
