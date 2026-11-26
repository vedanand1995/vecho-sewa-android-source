.class public Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NotificationOtherServicesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ALERT_SCREEN:Ljava/lang/String; = "alertScreen"

.field private static final REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY:Ljava/lang/Integer;

.field private static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private gson:Lcom/google/gson/Gson;

.field private limit:J

.field private nextButton:Lcom/google/android/material/button/MaterialButton;

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

.field private selectedNotificationIndex:I

.field private selectedTypeIndex:I

.field private selectedVillageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private serviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedAshaAreas:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedVillageIds:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->gson:Lcom/google/gson/Gson;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedTypeIndex:I

    const-wide/16 v1, 0x1e

    .line 69
    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->limit:J

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMapWithCounter:Ljava/util/List;

    .line 75
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedNotificationIndex:I

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedTypeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedNotificationIndex:I

    return p1
.end method

.method private getNotificationList(Ljava/util/List;)Ljava/util/List;
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

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
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

    .line 238
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeansMapByActualIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 247
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 248
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v6, v7, v5, v5, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v4

    .line 249
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

    if-eqz v5, :cond_3

    .line 250
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    :cond_3
    move-object v2, v4

    goto :goto_2

    .line 253
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 256
    :goto_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v4, :cond_2

    .line 258
    new-instance v11, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v9, 0x0

    move-object v5, v11

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMapWithCounter:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 109
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 110
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->footerView:Landroid/widget/LinearLayout;

    .line 115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->showProcessDialog()V

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setTypeScreen()V

    return-void
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 268
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->showProcessDialog()V

    .line 270
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setAlertScreen()V

    .line 271
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->retrieveNotifications()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setSubTitle(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "typeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "alertScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMobDataBeans:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedNotificationIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 177
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMapWithCounter:Ljava/util/List;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedNotificationIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 179
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForOtherNotificationsForm(Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V

    .line 180
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    const-string v2, "entity"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedNotificationIndex:I

    goto :goto_1

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a task"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->viewTypeScreen()V

    return-void

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->showProcessDialog()V

    .line 167
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->retrieveNotifications()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedAshaAreas"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)V

    .line 85
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 84
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedAshaAreas:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedVillageIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)V

    .line 88
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 87
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedVillageIds:Ljava/util/List;

    .line 89
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 10

    const/4 v0, 0x0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->serviceList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedTypeIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :try_start_1
    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->limit:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 308
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :goto_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->onLoadMoreBackground()V

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

    .line 316
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMobDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->getNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 277
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 283
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedTypeIndex:I

    .line 284
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedNotificationIndex:I

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->screen:Ljava/lang/String;

    const-string v0, "alertScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 287
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setTypeScreen()V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->finish()V

    :goto_0
    return v1

    :cond_2
    return v2

    .line 279
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setContentView(Landroid/view/View;)V

    .line 98
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->finish()V

    .line 105
    :cond_1
    const-string v0, "Other Notifications"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveNotifications()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 196
    :try_start_0
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMapWithCounter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->serviceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedTypeIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMobDataBeans:Ljava/util/List;

    .line 199
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->offset:J

    .line 200
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setAlertScreen()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAlertScreen()V
    .locals 4

    .line 208
    const-string v0, "alertScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->screen:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMobDataBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    const-string v1, "Select alert"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationMobDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->getNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)V

    .line 224
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 225
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    const-string v1, "No notifications! Thank you for doing your work."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->hideProcessDialog()V

    return-void
.end method

.method public setTypeScreen()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForOtherServicesNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationCountMap:Ljava/util/Map;

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->viewTypeScreen()V

    return-void
.end method

.method public viewTypeScreen()V
    .locals 7

    .line 131
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->screen:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->serviceList:Ljava/util/ArrayList;

    .line 134
    const-string v1, "TT2_ALERT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->serviceList:Ljava/util/ArrayList;

    const-string v2, "IRON_SUCROSE_ALERT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->serviceList:Ljava/util/ArrayList;

    const-string v3, "DPT_BOOSTER_2_ALERT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationCountMap:Ljava/util/Map;

    .line 140
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationCountMap:Ljava/util/Map;

    .line 142
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v4, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->notificationCountMap:Ljava/util/Map;

    .line 144
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;)V

    .line 154
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationOtherServicesActivity;->hideProcessDialog()V

    return-void
.end method
