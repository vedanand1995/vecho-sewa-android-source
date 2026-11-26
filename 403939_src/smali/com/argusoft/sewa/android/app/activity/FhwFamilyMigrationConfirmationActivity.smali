.class public Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FhwFamilyMigrationConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FAMILY_DETAILS_SCREEN:Ljava/lang/String; = "familyDetailsScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final REJECT_CONFIRMATION_SCREEN:Ljava/lang/String; = "rejectConfirmationScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private confirmationRadioGroup:Landroid/widget/RadioGroup;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private memberDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

.field private screen:Ljava/lang/String;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private getRadioGroupYesNo()Landroid/widget/RadioGroup;
    .locals 3

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 135
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 123
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 126
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 128
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->showMemberDetails()V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 225
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->screen:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setRejectConfirmationScreen()V
    .locals 4

    .line 214
    const-string v0, "rejectConfirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->screen:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to reject this family migration?"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showMemberDetails()V
    .locals 6

    .line 192
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->showProcessDialog()V

    .line 193
    const-string v0, "familyDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->screen:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Family details"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Family ID"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Members Details"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-direct {v2, v4, v5}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/FamilyBean;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Do you want to confirm this family migration?"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->hideProcessDialog()V

    return-void
.end method

.method private storeAshaEventRejectionForm()V
    .locals 7

    .line 233
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setNotificationId(Ljava/lang/Long;)V

    .line 235
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 236
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setFamilyId(Ljava/lang/Long;)V

    .line 237
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setEventType(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setRejectedOn(Ljava/lang/Long;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    new-instance v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 245
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 246
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    .line 249
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 250
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    .line 251
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 252
    sget-object v4, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 254
    const-string v3, "FHW_EVENT_REJECTION"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 256
    new-instance v4, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 259
    const-string v1, "P"

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 260
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 263
    const-string v1, "Family Migration Rejection"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    .line 270
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteNotificationByNotificationId(Ljava/lang/Long;)V

    .line 271
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 303
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3ec

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 116
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure you want to close family migration confirmation?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 142
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->finish()V

    goto/16 :goto_2

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    goto/16 :goto_2

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_a

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "rejectConfirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "familyDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please Select an option"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 184
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->storeAshaEventRejectionForm()V

    goto/16 :goto_2

    .line 174
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 177
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setFinalScreen()V

    goto/16 :goto_2

    .line 178
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 179
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->showMemberDetails()V

    goto/16 :goto_2

    .line 148
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 150
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 151
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 152
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 153
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-eqz v1, :cond_8

    .line 156
    new-instance v1, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/NotificationBean;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setId(Ljava/lang/Integer;)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "notificationBean"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    :cond_8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->memberDataBeanList:Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/FamilyBean;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v1, "familyToMigrate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "notification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3ec

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 168
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 169
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setRejectConfirmationScreen()V

    :cond_a
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x59d6dc4a -> :sswitch_2
        0x7a83a300 -> :sswitch_1
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

    .line 84
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->context:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/FamilyBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->memberDataBeanList:Ljava/util/List;

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 91
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 276
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 282
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 283
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->screen:Ljava/lang/String;

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
    const-string v0, "rejectConfirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "familyDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 293
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setRejectConfirmationScreen()V

    goto :goto_2

    .line 289
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->showMemberDetails()V

    goto :goto_2

    .line 285
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->finish()V

    :cond_4
    :goto_2
    return v2

    .line 278
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x59d6dc4a -> :sswitch_2
        0x7a83a300 -> :sswitch_1
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

    .line 96
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 101
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->finish()V

    .line 108
    :cond_1
    const-string v0, "Family Migration Confirmation"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setTitle(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwFamilyMigrationConfirmationActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method
