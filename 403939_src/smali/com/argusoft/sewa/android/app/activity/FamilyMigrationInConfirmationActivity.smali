.class public Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FamilyMigrationInConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AREA_SELECTION_SCREEN:Ljava/lang/String; = "areaSelectionScreen"

.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final FAMILY_INFO_SCREEN:Ljava/lang/String; = "familyInfoScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;


# instance fields
.field private areaSpinner:Landroid/widget/Spinner;

.field private areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private radioGroupForConfirmation:Landroid/widget/RadioGroup;

.field private radioGroupForFamilyQue:Landroid/widget/RadioGroup;

.field private screenName:Ljava/lang/String;

.field private selectedArea:Lcom/argusoft/sewa/android/app/model/LocationBean;

.field private selectedVillage:Lcom/argusoft/sewa/android/app/model/LocationBean;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->createFamilyMigrationInConfirmationBean()V

    return-void
.end method

.method private addFinalScreen()V
    .locals 2

    .line 313
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have successfully migrated in a family. Thank you, form is complete."

    .line 318
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have selected not to migrate in a family. Thank you, form is complete."

    .line 322
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Please come back when you find the family. Form is complete."

    .line 326
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private createFamilyMigrationInConfirmationBean()V
    .locals 3

    .line 355
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;->setNotificationId(Ljava/lang/Long;)V

    .line 357
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;->setMigrationId(Ljava/lang/Long;)V

    .line 358
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;->setFamilyId(Ljava/lang/Long;)V

    .line 359
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 360
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;->setHasMigrationHappened(Ljava/lang/Boolean;)V

    .line 361
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;->setAreaMigratedTo(Ljava/lang/Long;)V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 364
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;->setHasMigrationHappened(Ljava/lang/Boolean;)V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createFamilyMigrationInConfirmation(Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;)V

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteNotificationByNotificationId(Ljava/lang/Long;)V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->finish()V

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;)V

    .line 347
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this family migration confirmation form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 108
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 113
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setFamilyInfoScreen()V

    return-void
.end method

.method private setAreaSelectionScreen()V
    .locals 6

    .line 257
    const-string v0, "areaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areaSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 262
    const-string v2, "-Select-"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 264
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areas:Ljava/util/List;

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

    .line 265
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 268
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areaSpinner:Landroid/widget/Spinner;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Select area for the family"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setConfirmationScreen()V
    .locals 5

    .line 276
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedVillage:Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v4, "Village migrating to"

    .line 283
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedVillage:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v4, "Area migrating to"

    .line 289
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Are you sure want to migrate the family to this area"

    .line 294
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Are you sure this family has not been migrated in to your village"

    .line 299
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    if-nez v0, :cond_4

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-string v3, "Yes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "No"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 306
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFamilyInfoScreen()V
    .locals 5

    .line 202
    const-string v0, "familyInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "You have to find this family in your village"

    .line 206
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family ID"

    .line 208
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 207
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 210
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Member Details"

    .line 212
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getMemberDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getLocationDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Location migrated from"

    .line 219
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 221
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getLocationDetails()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getAreaDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Area migrated from"

    .line 225
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 227
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getAreaDetails()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getFhwDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "FHW Details"

    .line 231
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 233
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getFhwDetails()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getOtherInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Other Info"

    .line 237
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 239
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->getOtherInfo()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you want to migrate in this Family?"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    if-nez v0, :cond_5

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    const-string v2, "Family not found yet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 251
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .line 118
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;)V

    .line 131
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Migration?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_b

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

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
    const-string v0, "areaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please Select an option"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 192
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->finishActivity()V

    goto/16 :goto_2

    .line 173
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 177
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->addFinalScreen()V

    .line 179
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForConfirmation:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_b

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 181
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setAreaSelectionScreen()V

    goto/16 :goto_2

    .line 184
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 185
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setFamilyInfoScreen()V

    goto :goto_2

    .line 164
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_7

    .line 165
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select an area"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areas:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 168
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setConfirmationScreen()V

    goto :goto_2

    .line 142
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 148
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setAreaSelectionScreen()V

    goto :goto_2

    .line 152
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 153
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setConfirmationScreen()V

    goto :goto_2

    .line 157
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 158
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->addFinalScreen()V

    :cond_b
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30585ec2 -> :sswitch_3
        0x1774e0cb -> :sswitch_2
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

    .line 76
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    const-string v0, "notificationBean"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->getLocationBeanByActualId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LocationBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->selectedVillage:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 83
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->areas:Ljava/util/List;

    .line 84
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->familyMigrationDetailsDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 373
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 378
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_7

    .line 379
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->screenName:Ljava/lang/String;

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
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "areaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 399
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 400
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setFamilyInfoScreen()V

    goto :goto_2

    .line 402
    :cond_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setConfirmationScreen()V

    goto :goto_2

    .line 390
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 391
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setAreaSelectionScreen()V

    .line 393
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->radioGroupForFamilyQue:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 394
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setFamilyInfoScreen()V

    goto :goto_2

    .line 386
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setFamilyInfoScreen()V

    goto :goto_2

    .line 381
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->showProcessDialog()V

    .line 382
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->finish()V

    :cond_7
    :goto_2
    return v2

    .line 374
    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30585ec2 -> :sswitch_3
        0x1774e0cb -> :sswitch_2
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

    .line 91
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 96
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->finish()V

    .line 103
    :cond_1
    const-string v0, "Family Migration IN Confirmation"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method
