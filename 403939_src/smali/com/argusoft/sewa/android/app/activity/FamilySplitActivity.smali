.class public Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FamilySplitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final HEAD_MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "headMemberSelectionScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MIGRATE_QUE_SCREEN:Ljava/lang/String; = "migrateQueScreen"

.field private static final OTHER_INFO_SCREEN:Ljava/lang/String; = "otherInfoScreen"

.field private static final RADIO_BUTTON_ID_NO:I = 0x138a

.field private static final RADIO_BUTTON_ID_YES:I = 0x1389

.field private static final REL_WITH_HOF_SCREEN:Ljava/lang/String; = "relWithHofScreen"


# instance fields
.field private allMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private confirmationRadioGroup:Landroid/widget/RadioGroup;

.field private familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headRadioGroup:Landroid/widget/RadioGroup;

.field private headSelected:Z

.field private migrateQueRadioGroup:Landroid/widget/RadioGroup;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private final relationWithHofMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private screenName:Ljava/lang/String;

.field private selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private unselectedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->relationWithHofMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/Map;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->relationWithHofMap:Ljava/util/Map;

    return-object p0
.end method

.method private getRelWithHofScreen(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 398
    const-string v0, "relWithHofScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Select relation of below members with new head of family : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const/16 v2, 0x2710

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 404
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->getMemberAndRelWithHofView(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 145
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 147
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setBodyDetail()V

    return-void
.end method

.method private saveSplitFamily()V
    .locals 4

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 509
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;-><init>()V

    .line 513
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 514
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setFamilyId(Ljava/lang/Long;)V

    :cond_1
    const/4 v2, 0x1

    .line 516
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setCurrentLocation(Ljava/lang/Boolean;)V

    .line 517
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setSplit(Ljava/lang/Boolean;)V

    .line 518
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setMemberIds(Ljava/util/List;)V

    .line 519
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setReportedOn(Ljava/lang/Long;)V

    .line 520
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setExistingHeadSelected(Ljava/lang/Boolean;)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setNewHead(Ljava/lang/Long;)V

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->relationWithHofMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->relationWithHofMap:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setRelationWithHofMap(Ljava/util/Map;)V

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createFamilyMigrationOut(Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V

    return-void
.end method

.method private setBodyDetail()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMigrateQueScreen()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMemberSelectionScreen()V

    :goto_0
    return-void
.end method

.method private setConfirmationScreen()V
    .locals 8

    .line 432
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Family details"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Family ID"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Member Details"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " - "

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 440
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 442
    iget-boolean v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x70

    const/4 v4, 0x6

    const/16 v5, 0x30

    .line 443
    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v4, "New Split Family will be created with these members"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 450
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to continue splitting this family? (This cannot be reversed)"

    .line 455
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_3

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x1389

    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x138a

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 461
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 498
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setHeadMemberSelectionScreen()V
    .locals 8

    .line 355
    const-string v0, "headMemberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You have selected to move the head from the family to new split family for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 360
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "You are about to split members without head of family please select new head of family"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Select a new head for the family"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    .line 370
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    const-string v1, " - "

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 372
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-static {v5, v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v5

    .line 375
    iget-boolean v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 378
    :cond_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 383
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 383
    invoke-static {v5, v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v5

    .line 386
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 387
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 389
    :cond_3
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMemberSelectionScreen()V
    .locals 5

    .line 307
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Select the members whom you want to split"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->allMembers:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->allMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 317
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 317
    invoke-static {v2, v3, v4, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v2

    .line 321
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 322
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 324
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_1
    :goto_1
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "There are no members in this family"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setMigrateQueScreen()V
    .locals 4

    .line 469
    const-string v0, "migrateQueScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 472
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "What do you want to do with this new family?"

    .line 473
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 472
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrateQueRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x1389

    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Keep this family in the current location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x138a

    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Migrate this family to a new location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 480
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrateQueRadioGroup:Landroid/widget/RadioGroup;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrateQueRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setOtherInfoScreen()V
    .locals 5

    .line 487
    const-string v0, "otherInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 490
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v2, "Other Information"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const/16 v1, 0x1f4

    const/4 v3, -0x1

    const/16 v4, 0x3e8

    invoke-static {v0, v2, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMemberAndRelWithHofView(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Landroid/widget/LinearLayout;
    .locals 5

    .line 410
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 411
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const/16 v2, 0x2710

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->RELATION_WITH_HOF_LIST:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .line 160
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)V

    .line 173
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Split Family?"

    const/16 v5, -0x97

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 300
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->allMembers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->allMembers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_17

    .line 183
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "headMemberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "otherInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "migrateQueScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "relWithHofScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x1389

    const-string v4, "Please Select an option"

    const/16 v5, 0x138a

    const-string v6, "isCurrentLocation"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->saveSplitFamily()V

    .line 285
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 286
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v3, p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->finish()V

    goto/16 :goto_5

    .line 209
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a head for the family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_7
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    if-eqz p1, :cond_8

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto :goto_2

    .line 217
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 220
    :goto_2
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    if-eqz p1, :cond_a

    .line 221
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_9

    .line 222
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->getRelWithHofScreen(Ljava/util/List;)V

    goto/16 :goto_5

    .line 225
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setConfirmationScreen()V

    goto/16 :goto_5

    .line 228
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_b

    .line 229
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->getRelWithHofScreen(Ljava/util/List;)V

    goto/16 :goto_5

    .line 232
    :cond_b
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setConfirmationScreen()V

    goto/16 :goto_5

    .line 185
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v0, "Please select some members of the family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->allMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-string v0, "You have selected all the members of the family. Please select some members"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_d
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 195
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    .line 205
    :cond_f
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setHeadMemberSelectionScreen()V

    goto/16 :goto_5

    .line 247
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_10

    .line 248
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 249
    :cond_10
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v5, :cond_11

    .line 250
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMemberSelectionScreen()V

    goto/16 :goto_5

    .line 251
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v0, :cond_17

    .line 252
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMigrateQueScreen()V

    goto/16 :goto_5

    .line 280
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setFinalScreen()V

    goto/16 :goto_5

    .line 257
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrateQueRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_12

    .line 258
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 259
    :cond_12
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrateQueRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v0, :cond_13

    .line 260
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setOtherInfoScreen()V

    goto/16 :goto_5

    .line 261
    :cond_13
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->migrateQueRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v5, :cond_17

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 264
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 266
    :cond_14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string v1, "existingHeadSelected"

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->relationWithHofMap:Ljava/util/Map;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "relationWithHofMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v1, :cond_15

    .line 271
    const-string v2, "newHead"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :cond_15
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "memberIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v3, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setResult(ILandroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->finish()V

    goto :goto_5

    .line 238
    :pswitch_6
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    if-eqz p1, :cond_16

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 241
    :cond_16
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setConfirmationScreen()V

    :cond_17
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2644b4 -> :sswitch_6
        -0x6ab5f6de -> :sswitch_5
        -0x3005e216 -> :sswitch_4
        0x1dfa7d01 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x6323191e -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 92
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    const-string v0, "notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 100
    :cond_0
    const-string v0, "familyToSplit"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 102
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->allMembers:Ljava/util/List;

    .line 103
    const-string v0, "memberIds"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)V

    .line 106
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 105
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 108
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->familyToSplit:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 110
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->unselectedMembers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 120
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 532
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 533
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 538
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_8

    .line 539
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "headMemberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "otherInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "migrateQueScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "relWithHofScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 562
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setOtherInfoScreen()V

    goto :goto_1

    .line 541
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setResult(I)V

    .line 542
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->finish()V

    goto :goto_1

    .line 558
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMigrateQueScreen()V

    goto :goto_1

    .line 554
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setConfirmationScreen()V

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x0

    .line 548
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->selectedHeadMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 549
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->headSelected:Z

    .line 550
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMemberSelectionScreen()V

    :cond_8
    :goto_1
    return v1

    .line 534
    :cond_9
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7f2644b4 -> :sswitch_6
        -0x6ab5f6de -> :sswitch_5
        -0x3005e216 -> :sswitch_4
        0x1dfa7d01 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x6323191e -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .line 125
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setContentView(Landroid/view/View;)V

    .line 130
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->finish()V

    .line 137
    :cond_1
    const-string v0, "Split Family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method
