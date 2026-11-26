.class public Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MigrationRevertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final MEMBER_INFO_SCREEN:Ljava/lang/String; = "memberInfoScreen"

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

.field private migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private revertRadioGroup:Landroid/widget/RadioGroup;

.field private screenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->isOut:Z

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->createMigrationReturn(Ljava/lang/Boolean;)V

    return-void
.end method

.method private createMigrationReturn(Ljava/lang/Boolean;)V
    .locals 2

    .line 262
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertMigratedMembersBeanToDataBean(Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;)Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setOut(Ljava/lang/Boolean;)V

    .line 264
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->storeRevertedMigrationBean(Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;)V

    .line 265
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->deleteMigratedMembersBean(Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;)V

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finish()V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 242
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)V

    .line 255
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this Revert Migration form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 258
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private getRadioGroupYesNo()Landroid/widget/RadioGroup;
    .locals 3

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 132
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 99
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setContentView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->nextButton:Landroid/widget/Button;

    .line 105
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setMemberDetailsScreen()V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 234
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->screenName:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMemberDetailsScreen()V
    .locals 6

    .line 160
    const-string v0, "memberInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->screenName:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "Member Details"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Member Name"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getHealthId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Health Id"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFamilyMigratedFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Family Migrated From"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFamilyMigratedFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFamilyMigratedTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Family Migrated To"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFamilyMigratedTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Location migrated from"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Location Migrated to"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Migration Status"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "confirmationPending"

    const-string v3, "confirmed"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v5, "LOST TO FOLLOW UP"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v4, "OUT OF STATE"

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    const-string v3, "outOfState"

    goto :goto_0

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v4, "CONFIRMATION PENDING"

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v2

    goto :goto_0

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v5, "CONFIRMED"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_9

    .line 212
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    .line 215
    :cond_9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 216
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->isOut:Z

    if-eqz v0, :cond_a

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Do you want to bring back this member?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v3, "Do you want to return this member to native?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v2, "Sorry, Currently you cannot revert this migration"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 110
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)V

    .line 122
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Revert Migration?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 125
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_4

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finishActivity()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 141
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    const-string v0, "Please Select an option"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finish()V

    goto :goto_0

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->revertRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setFinalScreen()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    const-string v0, "isOut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->isOut:Z

    .line 72
    const-string v0, "migratedMemberBean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 271
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 278
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setMemberDetailsScreen()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finish()V

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 273
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setContentView(Landroid/view/View;)V

    .line 87
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finish()V

    .line 94
    :cond_1
    const-string v0, "Revert Migration"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setTitle(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->migratedMembersBean:Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method
