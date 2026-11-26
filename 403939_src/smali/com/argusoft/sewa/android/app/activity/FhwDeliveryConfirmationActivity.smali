.class public Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FhwDeliveryConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final REJECT_CONFIRMATION_SCREEN:Ljava/lang/String; = "rejectConfirmationScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private confirmationRadioGroup:Landroid/widget/RadioGroup;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private nextButton:Landroid/widget/Button;

.field private rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

.field private screen:Ljava/lang/String;

.field private selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private getRadioGroupYesNo()Landroid/widget/RadioGroup;
    .locals 3

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 134
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 122
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 123
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->nextButton:Landroid/widget/Button;

    .line 127
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->showMemberDetails()V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 243
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->screen:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setRejectConfirmationScreen()V
    .locals 4

    .line 209
    const-string v0, "rejectConfirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->screen:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to reject this member delivery?"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showMemberDetails()V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->showProcessDialog()V

    .line 176
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->screen:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 179
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 180
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Member Details"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Member Id"

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Family ID"

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Name"

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v3, "Date of birth"

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Age"

    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    const-string v2, "Do you want to confirm this delivery?"

    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->hideProcessDialog()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 8

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    const-string v1, "FHW_WPD"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 222
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 221
    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    const-string v1, "entity"

    const-string v2, "FHW_WPD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f3

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 225
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity$1;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;)V

    .line 232
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 233
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private storeAshaEventRejectionForm()V
    .locals 7

    .line 252
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setNotificationId(Ljava/lang/Long;)V

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 255
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setFamilyId(Ljava/lang/Long;)V

    .line 256
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setEventType(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AshaEventRejectionDataBean;->setRejectedOn(Ljava/lang/Long;)V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    new-instance v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 264
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 265
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    .line 268
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 269
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 271
    sget-object v4, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 273
    const-string v3, "FHW_EVENT_REJECTION"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 275
    new-instance v4, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 278
    const-string v1, "P"

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 279
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 282
    const-string v1, "Delivery Rejection"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 285
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteNotificationByNotificationId(Ljava/lang/Long;)V

    .line 290
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 324
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3f3

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 115
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure you want to close confirmation of ASHA reported events?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->finish()V

    goto/16 :goto_2

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    goto/16 :goto_2

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_9

    .line 145
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->screen:Ljava/lang/String;

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
    const-string v0, "memberDetailsScreen"

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

    .line 167
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->storeAshaEventRejectionForm()V

    goto :goto_2

    .line 157
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 160
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setFinalScreen()V

    goto :goto_2

    .line 161
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->rejectConfirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 162
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->showMemberDetails()V

    goto :goto_2

    .line 147
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 148
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 150
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->startDynamicFormActivity()V

    goto :goto_2

    .line 151
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 152
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setRejectConfirmationScreen()V

    :cond_9
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3eb994d4 -> :sswitch_2
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

    .line 85
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->context:Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 91
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 295
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 301
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 302
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->screen:Ljava/lang/String;

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
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setRejectConfirmationScreen()V

    goto :goto_2

    .line 308
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->showMemberDetails()V

    goto :goto_2

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->finish()V

    :cond_4
    :goto_2
    return v2

    .line 297
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb994d4 -> :sswitch_2
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
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setContentView(Landroid/view/View;)V

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
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->finish()V

    .line 108
    :cond_1
    const-string v0, "Delivery Confirmation"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setTitle(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method
