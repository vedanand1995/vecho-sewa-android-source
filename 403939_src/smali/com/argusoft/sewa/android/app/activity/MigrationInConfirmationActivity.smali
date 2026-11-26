.class public Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MigrationInConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final MEMBER_INFO_SCREEN:Ljava/lang/String; = "memberInfoScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headMembersMapWithFamilyIdAsKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field private migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Lcom/google/android/material/button/MaterialButton;

.field private noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private radioGroupForConfirmation:Landroid/widget/RadioGroup;

.field private radioGroupForMemberQue:Landroid/widget/RadioGroup;

.field private screenName:Ljava/lang/String;

.field private searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchString:Ljava/lang/String;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamilyIndex:I

    const-wide/16 v0, 0x1e

    .line 97
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->limit:J

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Ljava/util/Timer;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->createMigrationConfirmationBean()V

    return-void
.end method

.method private addFinalScreen()V
    .locals 2

    .line 476
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have successfully migrated in a beneficiary. Thank you, form is complete."

    .line 481
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have selected not to migrate in a beneficiary. Thank you, form is complete."

    .line 485
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Please come back when you find the beneficiary. Form is complete."

    .line 489
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private addSearchTextBoxForFamily()V
    .locals 4

    .line 328
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Search Family in which the beneficiary has migrated"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 332
    const-string v0, "Search Family"

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 334
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createMigrationConfirmationBean()V
    .locals 3

    .line 518
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;->setNotificationId(Ljava/lang/Long;)V

    .line 520
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;->setMigrationId(Ljava/lang/Long;)V

    .line 521
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 522
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 523
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;->setHasMigrationHappened(Ljava/lang/Boolean;)V

    .line 524
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;->setFamilyMigratedTo(Ljava/lang/Long;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 527
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;->setHasMigrationHappened(Ljava/lang/Boolean;)V

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createMigrationInConfirmation(Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;)V

    .line 531
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteNotificationByNotificationId(Ljava/lang/Long;)V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 494
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->finish()V

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V

    .line 510
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this migration confirmation form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 513
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private getList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 420
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 425
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v2, :cond_1

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    const-string v3, " null"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 432
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v8, v2

    .line 434
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 131
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 132
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 134
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    .line 137
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setMemberInfoScreen()V

    return-void
.end method

.method private setConfirmationScreen()V
    .locals 6

    .line 440
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v4, "Family ID"

    .line 445
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_0

    .line 450
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v5, "Head of the family"

    .line 451
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    .line 453
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Are you sure want to migrate the beneficiary to this family?"

    .line 457
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Are you sure this member has not been migrated in to your village"

    .line 462
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    if-nez v0, :cond_3

    .line 466
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    .line 467
    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    const-string v1, "No"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMemberInfoScreen()V
    .locals 4

    .line 247
    const-string v0, "memberInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have to identify this person in your village and select a family for the same"

    .line 251
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Member name"

    .line 253
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 252
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Member Health Id"

    .line 271
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 273
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getChildDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Children migrated with this member"

    .line 277
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 279
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getChildDetails()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family Migrated From"

    .line 283
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 285
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLocationDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Location Migrated From"

    .line 289
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 291
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLocationDetails()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "FHW Name"

    .line 295
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 297
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwName()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "FHW Contact Number"

    .line 301
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 303
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getOtherInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getOtherInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Other Info"

    .line 307
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 309
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getOtherInfo()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do you want to migrate in this member"

    .line 313
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    if-nez v0, :cond_a

    .line 316
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    .line 317
    const-string v1, "Yes"

    .line 318
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 317
    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    const-string v1, "No"

    .line 320
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 319
    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    const-string v1, "Member not found yet"

    .line 322
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 321
    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 324
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addRadioGroupForFamilySelection()V
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->getList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 398
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V

    .line 404
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 405
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 408
    :cond_0
    const-string v0, "There are no families."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 409
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 228
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V

    .line 240
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Migration?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 243
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_f

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

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
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please select an option"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 217
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->finishActivity()V

    goto/16 :goto_4

    .line 189
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 195
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addFinalScreen()V

    goto/16 :goto_4

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_f

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addSearchTextBoxForFamily()V

    .line 203
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 205
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addRadioGroupForFamilySelection()V

    goto/16 :goto_4

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 210
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setMemberInfoScreen()V

    goto/16 :goto_4

    .line 172
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 176
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 179
    :cond_8
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamilyIndex:I

    if-ne p1, v1, :cond_9

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a family"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 184
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 185
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setConfirmationScreen()V

    goto/16 :goto_4

    .line 177
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->finish()V

    return-void

    .line 173
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v0, "Please search for a family"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 145
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 150
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addSearchTextBoxForFamily()V

    .line 153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 155
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addRadioGroupForFamilySelection()V

    goto :goto_4

    .line 160
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 161
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setConfirmationScreen()V

    goto :goto_4

    .line 165
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 166
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addFinalScreen()V

    :cond_f
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b9f3b0c -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x1dfa7d01 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    const-string v0, "notificationBean"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 108
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 111
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->searchFamilyByLocation(Ljava/lang/String;Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    .line 591
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->offset:J

    .line 592
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 585
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 597
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->getList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 536
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 537
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 542
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_8

    .line 543
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 569
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 570
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setMemberInfoScreen()V

    goto :goto_2

    .line 572
    :cond_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setConfirmationScreen()V

    goto :goto_2

    .line 553
    :pswitch_1
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamilyIndex:I

    .line 554
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 555
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 556
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addSearchTextBoxForFamily()V

    .line 557
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 558
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 559
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addRadioGroupForFamilySelection()V

    goto :goto_2

    .line 563
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 564
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setMemberInfoScreen()V

    goto :goto_2

    .line 549
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setMemberInfoScreen()V

    goto :goto_2

    .line 545
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->onBackPressed()V

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v2

    .line 538
    :cond_9
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b9f3b0c -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x1dfa7d01 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
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

    .line 116
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 120
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->finish()V

    .line 127
    :cond_1
    const-string v0, "Migration Confirmation"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 9

    .line 384
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 385
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->selectedFamilyIndex:I

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->offset:J

    .line 387
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->offset:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->searchFamilyByLocation(Ljava/lang/String;Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->familyDataBeans:Ljava/util/List;

    .line 388
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addRadioGroupForFamilySelection()V

    return-void
.end method
