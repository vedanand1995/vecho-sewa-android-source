.class public Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FamilyMigrationRevertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final FAMILY_INFO_SCREEN:Ljava/lang/String; = "familyInfoScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final STATUS_CONFIRMATION_PENDING:Ljava/lang/String; = "confirmationPending"

.field private static final STATUS_CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final STATUS_LFU:Ljava/lang/String; = "confirmed"

.field private static final STATUS_OUT_OF_STATE:Ljava/lang/String; = "outOfState"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private confirmationRadioGroup:Landroid/widget/RadioGroup;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isOut:Z

.field private migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private revertRadioGroup:Landroid/widget/RadioGroup;

.field private screenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->isOut:Z

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->createMigrationReturn(Ljava/lang/Boolean;)V

    return-void
.end method

.method private createMigrationReturn(Ljava/lang/Boolean;)V
    .locals 2

    .line 290
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertMigratedFamilyBeanToDataBean(Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;)Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setOut(Ljava/lang/Boolean;)V

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->storeRevertedFamilyMigrationBean(Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;)V

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->deleteMigratedFamilyBean(Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;)V

    .line 294
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->finish()V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 270
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;)V

    .line 283
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this Revert Migration form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 286
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private getRadioGroupYesNo()Landroid/widget/RadioGroup;
    .locals 3

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 130
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 97
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setContentView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 100
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->nextButton:Landroid/widget/Button;

    .line 103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setFamilyDetailsScreen()V

    return-void
.end method

.method private setConfirmationScreen()V
    .locals 4

    .line 246
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->screenName:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->isOut:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to bring back this family?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to return this family to native?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFamilyDetailsScreen()V
    .locals 7

    .line 168
    const-string v0, "familyInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->screenName:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "Family details"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Family ID"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Location migrated from"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Location Migrated to"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getSplitFamily()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getToLocationId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFromLocationId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Split family info"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Split and migrated family info"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "New familyId"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getsFamilyIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getSplitMembersDetail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Member Details"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getSplitMembersDetail()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 201
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Migration Status"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "confirmationPending"

    const-string v3, "confirmed"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v5, "LOST TO FOLLOW UP"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v4, "OUT OF STATE"

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    const-string v3, "outOfState"

    goto :goto_2

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v4, "CONFIRMATION PENDING"

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v2

    goto :goto_2

    .line 218
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v5, "CONFIRMED"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_8

    .line 223
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    .line 226
    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 227
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->isOut:Z

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Do you want to bring back this family?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Do you want to return this family to native?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    :goto_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 234
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "Sorry, Currently you cannot revert this migration"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 262
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->screenName:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 108
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;)V

    .line 120
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Manage Family Migration"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 123
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_7

    .line 136
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->screenName:Ljava/lang/String;

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
    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please Select an option"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->finishActivity()V

    goto :goto_2

    .line 148
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 151
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setFamilyDetailsScreen()V

    goto :goto_2

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 153
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setFinalScreen()V

    goto :goto_2

    .line 138
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->finish()V

    goto :goto_2

    .line 142
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setConfirmationScreen()V

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x30585ec2 -> :sswitch_2
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

    .line 65
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    const-string v0, "isOut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->isOut:Z

    .line 70
    const-string v0, "migratedFamilyBean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 299
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 305
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 306
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->screenName:Ljava/lang/String;

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
    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 314
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setConfirmationScreen()V

    goto :goto_2

    .line 311
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setFamilyDetailsScreen()V

    goto :goto_2

    .line 308
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->finish()V

    :cond_4
    :goto_2
    return v2

    .line 301
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30585ec2 -> :sswitch_2
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

    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setContentView(Landroid/view/View;)V

    .line 85
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->finish()V

    .line 92
    :cond_1
    const-string v0, "Manage Family Migration"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setTitle(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->migratedFamilyBean:Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method
