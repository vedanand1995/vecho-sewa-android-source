.class public Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MigrationOutConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final MEMBER_INFO_SCREEN:Ljava/lang/String; = "memberInfoScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private radioGroupForConfirmation:Landroid/widget/RadioGroup;

.field private radioGroupForMemberQue:Landroid/widget/RadioGroup;

.field private screenName:Ljava/lang/String;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->createMigrationOutConfirmation()V

    return-void
.end method

.method private createMigrationOutConfirmation()V
    .locals 3

    .line 265
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;->setNotificationId(Ljava/lang/Long;)V

    .line 267
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;->setMigrationId(Ljava/lang/Long;)V

    .line 268
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 269
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 270
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;->setHasMigrationHappened(Ljava/lang/Boolean;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 273
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;->setHasMigrationHappened(Ljava/lang/Boolean;)V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createMigrationOutConfirmation(Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;)V

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteNotificationByNotificationId(Ljava/lang/Long;)V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 245
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)V

    .line 258
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this migration confirmation form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 261
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private getRadioGroupYesNo()Landroid/widget/RadioGroup;
    .locals 3

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 226
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 95
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 98
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 100
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setMemberInfoScreen()V

    return-void
.end method

.method private setConfirmationScreen()V
    .locals 2

    .line 206
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Are you sure this beneficiary has been migrated?"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Are you sure this beneficiary has not been migrated?"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFinalScreen()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 231
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have successfully migrated out a beneficiary. Thank you, form is complete."

    .line 235
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have selected not to migrate out a beneficiary. Thank you, form is complete."

    .line 240
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setMemberInfoScreen()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 164
    const-string v0, "memberInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "You have to migrate out this person"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Member name"

    const/4 v3, 0x0

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 170
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Member Health Id"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 174
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family Migrated to"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 179
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLocationDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Location Migrated To"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 184
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getLocationDetails()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "FHW Name"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 189
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "FHW Contact Number"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 194
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;->getFhwPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you want to migrate out this member?"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    if-nez v0, :cond_5

    .line 200
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .line 144
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)V

    .line 156
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Migration?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 159
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_6

    .line 106
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

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
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please select an option"

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->finishActivity()V

    goto :goto_2

    .line 116
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 122
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setFinalScreen()V

    goto :goto_2

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 127
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setMemberInfoScreen()V

    goto :goto_2

    .line 108
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->radioGroupForMemberQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 109
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setConfirmationScreen()V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b9f3b0c -> :sswitch_2
        0x1dfa7d01 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
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

    .line 67
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    const-string v0, "notificationBean"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 73
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->migrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 282
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 288
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 299
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setConfirmationScreen()V

    goto :goto_2

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setMemberInfoScreen()V

    goto :goto_2

    .line 291
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->onBackPressed()V

    :cond_4
    :goto_2
    return v2

    .line 284
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b9f3b0c -> :sswitch_2
        0x1dfa7d01 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
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

    .line 80
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 84
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->finish()V

    .line 91
    :cond_1
    const-string v0, "Migration Confirmation"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method
