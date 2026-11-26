.class public Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "CbacDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final CBAC_EDIT_DETAILS:Ljava/lang/String; = "cbacEditDetails"

.field private static final DIAGNOSED_FOR_ASTHAMA:Ljava/lang/String; = "diagnosed_for_asthama"

.field private static final DIAGNOSED_FOR_BREAST_CANCER:Ljava/lang/String; = "diagnosed_for_breast_cancer"

.field private static final DIAGNOSED_FOR_CERVICAL_CANCER:Ljava/lang/String; = "diagnosed_for_cervical_cancer"

.field private static final DIAGNOSED_FOR_COPD:Ljava/lang/String; = "diagnosed_for_copd"

.field private static final DIAGNOSED_FOR_DIABETES:Ljava/lang/String; = "diagnosed_for_diabetes"

.field private static final DIAGNOSED_FOR_HEART_DISEASES:Ljava/lang/String; = "diagnosed_for_heart_diseases"

.field private static final DIAGNOSED_FOR_HYPERTENSION:Ljava/lang/String; = "diagnosed_for_hypertension"

.field private static final DIAGNOSED_FOR_KIDNEY_FAILURE:Ljava/lang/String; = "diagnosed_for_kidney_failure"

.field private static final DIAGNOSED_FOR_NON_HEALING_WOUND:Ljava/lang/String; = "diagnosed_for_non_healing_wound"

.field private static final DIAGNOSED_FOR_ORAL_CANCER:Ljava/lang/String; = "diagnosed_for_oral_cancer"

.field private static final DIAGNOSED_FOR_STROKE:Ljava/lang/String; = "diagnosed_for_stroke"

.field private static final EARLY_DETECTION_1:Ljava/lang/String; = "earlyDetection1"

.field private static final EARLY_DETECTION_2:Ljava/lang/String; = "earlyDetection2"

.field private static final EARLY_DETECTION_3:Ljava/lang/String; = "earlyDetection3"

.field private static final GENDER:Ljava/lang/String; = "gender"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_ID:Ljava/lang/String; = "memberId"

.field private static final MEMBER_NAME:Ljava/lang/String; = "memberName"

.field private static final MOBILE_NUMBER:Ljava/lang/String; = "mobileNumber"

.field private static final PERSONAL_EXAMINATION:Ljava/lang/String; = "personalExamination"

.field private static final PERSONAL_HISTORY_1:Ljava/lang/String; = "personalHistory1"

.field private static final PERSONAL_HISTORY_2:Ljava/lang/String; = "personalHistory2"

.field private static final PERSONAL_HISTORY_3:Ljava/lang/String; = "personalHistory3"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final RISK_ASSESSMENT:Ljava/lang/String; = "riskAssessment"

.field private static final SMOKE_OR_CONSUME_GUTKA:Ljava/lang/String; = "smoke_or_consume_gutka"

.field private static final UNIQUE_HEALTH_ID:Ljava/lang/String; = "uniqueHealthId"

.field private static final WAIST:Ljava/lang/String; = "waist"

.field private static final WEIGHT:Ljava/lang/String; = "weight"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isSelectedMemberFemale:Z

.field private isSelectedMemberMale:Z

.field private radioGroup:Landroid/widget/RadioGroup;

.field public restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private selectedMemberCbacDetails:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMemberId:Ljava/lang/Long;

.field private selectedScreen:Ljava/lang/String;

.field public sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f5

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/16 v0, 0x1f6

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 91
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->showProcessDialog()V

    .line 126
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 127
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 128
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setBodyDetail()V

    return-void
.end method

.method private setSharedStructureData()V
    .locals 4

    .line 646
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->showProcessDialog()V

    .line 647
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 648
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "memberId"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberActualId"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "uniqueHealthId"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "memberName"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 659
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_2
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberFemale:Z

    const-string v1, "gender"

    if-eqz v0, :cond_3

    .line 663
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "Female"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 664
    :cond_3
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberMale:Z

    if-eqz v0, :cond_4

    .line 665
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "Male"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "dob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 672
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 674
    const-string v1, "CbacDetailsActivity"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 677
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 678
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ageDisplay"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "fid"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "familyActualId"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "anyMemberCbacDone"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "smoke_or_consume_gutka"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "smokeOrConsumeGutka"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "consume_alcohol_daily"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "consumeAlcoholDaily"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "waist"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "physical_activity_150_min"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "physicalActivity150Min"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "bp_diabetes_heart_history"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bpDiabetesHeartHistory"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "shortness_of_breath"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortnessOfBreathe"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "two_weeks_coughing"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coughingMoreThan2Weeks"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "blood_in_sputum"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bloodInSputum"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "two_weeks_fever"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fever2weeks"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "loss_of_weight"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "weightLoss"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "night_sweats"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nightSweats"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "taking_anti_tb_drugs"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentlyTakingAntiTBDrugs"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "family_member_suffering_from_tb"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnyoneInFamilyCurrentTB"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "history_of_tb"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "historyOfTb"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "fits_history"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fitsHistory"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "mouth_opening_difficulty"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "difficultyInOpeningMouth"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "two_weeks_ulcers_in_mouth"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ulcerPatchGrowth"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "change_in_tone_of_voice"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "voiceToneChange"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "patch_on_skin"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "skinDiscoloration"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "difficulty_holding_objects"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "difficultyHoldingObjects"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "sensation_loss_palm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sensationLossPalm"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "lump_in_breast"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lumpInBreast"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "nipple_blood_stained_discharge"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nippleBloodStainedDischarge"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "change_in_size_of_breast"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeInSizeOfBreast"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "bleeding_between_periods"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bleedingBetweenPeriods"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "bleeding_after_menopause"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bleedingAfterMenopause"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "bleeding_after_intercourse"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bleedingAfterIntercourse"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "foul_vaginal_discharge"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "foulVaginalDischarge"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "occupational_exposure"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "occupationalExposure"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "age_at_menarche"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ageAtMenarche"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "menopause_arrived"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "menopauseArrived"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "duration_of_menopause"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "durationOfMenopause"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "pregnant"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "lactating"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "regular_periods"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "regularPeriods"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "bleeding"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "associated_with"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "associatedWith"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "remarks"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_hypertension"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForHypertension"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_hypertension"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForHypertension"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_diabetes"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForDiabetes"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_diabetes"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForDiabetes"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_heart_diseases"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForHeartDisease"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_heart_diseases"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForHeartDisease"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_stroke"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForStroke"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_stroke"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForStroke"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 732
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_kidney_failure"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForKidneyFailure"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_kidney_failure"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForKidneyFailure"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_non_healing_wound"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForNonHealingWound"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_non_healing_wound"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForNonHealingWound"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_copd"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForCopd"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_copd"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForCopd"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_asthama"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForAsthama"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_asthama"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForAsthama"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_oral_cancer"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForOralCancer"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_oral_cancer"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForOralCancer"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_breast_cancer"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForBreastCancer"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_breast_cancer"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForBreastCancer"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "diagnosed_for_cervical_cancer"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnosedForCervicalCancer"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "under_treatement_for_cervical_cancer"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "underTreatmentForCervicalCancer"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v1, "weight"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    const-string v1, "entity"

    const-string v2, "NCD_ASHA_CBAC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc8

    .line 752
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 753
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method private setSharedStructureData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 758
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private showNotOnlineMessage()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 784
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    .line 786
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setResult(I)V

    .line 787
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 764
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;)V

    .line 776
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to cancel viewing CBAC Details?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 779
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_d

    .line 242
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "riskAssessment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "personalHistory3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "personalHistory2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "personalHistory1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "personalExamination"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "earlyDetection3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "earlyDetection2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "earlyDetection1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "cbacEditDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 244
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setRiskAssessmentScreen()V

    goto :goto_2

    .line 247
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection1Screen()V

    goto :goto_2

    .line 269
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalExaminationScreen()V

    goto :goto_2

    .line 266
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory3Screen()V

    goto :goto_2

    .line 263
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory2Screen()V

    goto :goto_2

    .line 272
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setCbacEditDetailsScreen()V

    goto :goto_2

    .line 260
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory1Screen()V

    goto :goto_2

    .line 253
    :pswitch_7
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberFemale:Z

    if-eqz p1, :cond_a

    .line 254
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection3Screen()V

    goto :goto_2

    .line 255
    :cond_a
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberMale:Z

    if-eqz p1, :cond_d

    .line 256
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory1Screen()V

    goto :goto_2

    .line 250
    :pswitch_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection2Screen()V

    goto :goto_2

    .line 275
    :pswitch_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v1, :cond_c

    .line 276
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 277
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSharedStructureData()V

    goto :goto_2

    .line 279
    :cond_b
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->finish()V

    goto :goto_2

    .line 283
    :cond_c
    const-string p1, "Please Select an option"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f668aa9 -> :sswitch_9
        -0x1f1f25f1 -> :sswitch_8
        -0x1f1f25f0 -> :sswitch_7
        -0x1f1f25ef -> :sswitch_6
        -0x1524926f -> :sswitch_5
        -0x1690783 -> :sswitch_4
        -0x1690782 -> :sswitch_3
        -0x1690781 -> :sswitch_2
        0xe0a86f1 -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "memberId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberId:Ljava/lang/Long;

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 793
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 794
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 799
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_c

    .line 800
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "riskAssessment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "personalHistory3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "personalHistory2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "personalHistory1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "personalExamination"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "earlyDetection3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "earlyDetection2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "earlyDetection1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "cbacEditDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 802
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setResult(I)V

    .line 803
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->finish()V

    goto :goto_1

    .line 806
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setMemberDetailsScreen()V

    goto :goto_1

    .line 828
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory2Screen()V

    goto :goto_1

    .line 825
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory1Screen()V

    goto :goto_1

    .line 818
    :pswitch_4
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberFemale:Z

    if-eqz p1, :cond_b

    .line 819
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection3Screen()V

    goto :goto_1

    .line 821
    :cond_b
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection2Screen()V

    goto :goto_1

    .line 831
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory3Screen()V

    goto :goto_1

    .line 815
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection2Screen()V

    goto :goto_1

    .line 812
    :pswitch_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection1Screen()V

    goto :goto_1

    .line 809
    :pswitch_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setRiskAssessmentScreen()V

    goto :goto_1

    .line 834
    :pswitch_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalExaminationScreen()V

    :goto_1
    return v1

    :cond_c
    return v2

    .line 795
    :cond_d
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3f668aa9 -> :sswitch_9
        -0x1f1f25f1 -> :sswitch_8
        -0x1f1f25f0 -> :sswitch_7
        -0x1f1f25ef -> :sswitch_6
        -0x1524926f -> :sswitch_5
        -0x1690783 -> :sswitch_4
        -0x1690782 -> :sswitch_3
        -0x1690781 -> :sswitch_2
        0xe0a86f1 -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 113
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->finish()V

    .line 120
    :cond_1
    const-string v0, "NCD CBAC Details"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveCbacDetailFromServer()V
    .locals 6

    .line 171
    const-string v0, "navigationTo"

    const-string v1, "gender"

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    const-string v3, "memberId"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberId:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>()V

    .line 174
    const-string v4, "mob_ncd_cbac_details_by_member_id"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->setCode(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->setParameters(Ljava/util/Map;)V

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 178
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 179
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 180
    const-string v4, "memberName"

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setSubTitle(Ljava/lang/String;)V

    .line 181
    const-string v2, "M"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 182
    iput-boolean v4, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberMale:Z

    goto :goto_0

    .line 183
    :cond_0
    const-string v2, "F"

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iput-boolean v4, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->isSelectedMemberFemale:Z

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "memberDetailsScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v1, "riskAssessment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v1, "personalHistory3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_3
    const-string v1, "personalHistory2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_4
    const-string v1, "personalHistory1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v1, "personalExamination"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_6
    const-string v1, "earlyDetection3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_7
    const-string v1, "earlyDetection2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_8
    const-string v1, "earlyDetection1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_9
    const-string v1, "cbacEditDetails"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x9

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setCbacEditDetailsScreen()V

    goto :goto_3

    .line 213
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalExaminationScreen()V

    goto :goto_3

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory3Screen()V

    goto :goto_3

    .line 207
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory2Screen()V

    goto :goto_3

    .line 204
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory1Screen()V

    goto :goto_3

    .line 201
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection3Screen()V

    goto :goto_3

    .line 198
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection2Screen()V

    goto :goto_3

    .line 195
    :pswitch_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection1Screen()V

    goto :goto_3

    .line 192
    :pswitch_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setRiskAssessmentScreen()V

    goto :goto_3

    .line 189
    :pswitch_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setMemberDetailsScreen()V

    goto :goto_3

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setMemberDetailsScreen()V

    goto :goto_3

    .line 224
    :cond_4
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setResult(I)V

    .line 232
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->finish()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 235
    const-string v1, "CbacDetailsActivity"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f668aa9 -> :sswitch_9
        -0x1f1f25f1 -> :sswitch_8
        -0x1f1f25f0 -> :sswitch_7
        -0x1f1f25ef -> :sswitch_6
        -0x1524926f -> :sswitch_5
        -0x1690783 -> :sswitch_4
        -0x1690782 -> :sswitch_3
        -0x1690781 -> :sswitch_2
        0xe0a86f1 -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBodyDetail()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->retrieveCbacDetailFromServer()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->showNotOnlineMessage()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Some error occurred. Please try again."

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    :goto_0
    return-void
.end method

.method public setCbacEditDetailsScreen()V
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 629
    const-string v0, "cbacEditDetails"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 633
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 635
    :cond_0
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    const-string v1, "Would you like to edit CBAC Details?"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 638
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    const-string v1, "Yes"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 639
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    const-string v1, "No"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 641
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 642
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setEarlyDetection1Screen()V
    .locals 4

    .line 360
    const-string v0, "earlyDetection1"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Early Detection"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Shortness of breath"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "shortness_of_breath"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Coughing more than 2 weeks"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "two_weeks_coughing"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Blood in sputum"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "blood_in_sputum"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Fever for > 2 weeks"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "two_weeks_fever"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Loss of weight"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "loss_of_weight"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Night Sweats"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "night_sweats"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Are you currently taking anti-TB drugs"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "taking_anti_tb_drugs"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Anyone in family currently suffering from TB"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "family_member_suffering_from_tb"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "History of TB"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "history_of_tb"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "History of fits"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "fits_history"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setEarlyDetection2Screen()V
    .locals 4

    .line 398
    const-string v0, "earlyDetection2"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Early Detection"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Difficulty in mouth opening"

    .line 403
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 402
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "mouth_opening_difficulty"

    .line 405
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ulcers/patch/growth in mouth that has not healed in two weeks"

    .line 408
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "two_weeks_ulcers_in_mouth"

    .line 410
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Any change in the tone of your voice"

    .line 413
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "change_in_tone_of_voice"

    .line 415
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Any patch or discoloration on skin"

    .line 418
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "patch_on_skin"

    .line 420
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Difficulty in holding objects with fingers"

    .line 423
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "difficulty_holding_objects"

    .line 425
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Loss of sensation for Cold/Hot objects in palm or sole"

    .line 428
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "sensation_loss_palm"

    .line 430
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Occupational Exposure"

    .line 433
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "occupational_exposure"

    .line 435
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setEarlyDetection3Screen()V
    .locals 4

    .line 441
    const-string v0, "earlyDetection3"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Early Detection"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Lump in the breast"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "lump_in_breast"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Blood stained discharge from the nipple"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "nipple_blood_stained_discharge"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Change in shape and size of breast"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "change_in_size_of_breast"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Bleeding between periods"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "bleeding_between_periods"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Bleeding after menopause"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "bleeding_after_menopause"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Bleeding after intercourse"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "bleeding_after_intercourse"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Foul smelling vaginal discharge"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "foul_vaginal_discharge"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberDetailsScreen()V
    .locals 4

    .line 293
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Personal Information"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Unique Health ID"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "uniqueHealthId"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "familyId"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Member Name"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "memberName"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Age"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "age"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Gender"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "gender"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Address"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "address"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Mobile Number"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "mobileNumber"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setPersonalExaminationScreen()V
    .locals 4

    .line 611
    const-string v0, "personalExamination"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 613
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Personal Examination"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Height (in cms)"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "height"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 618
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Weight (in kgs)"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "weight"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Body Mass Index"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "bmi"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 623
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setPersonalHistory1Screen()V
    .locals 4

    .line 470
    const-string v0, "personalHistory1"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 472
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Personal History"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Hypertension"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 476
    const-string v3, "diagnosed_for_hypertension"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Hypertension"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_hypertension"

    .line 481
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Diabetes"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 486
    const-string v3, "diagnosed_for_diabetes"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Diabetes"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_diabetes"

    .line 491
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Heart Diseases"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 496
    const-string v3, "diagnosed_for_heart_diseases"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Heart Diseases"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_heart_diseases"

    .line 502
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Stroke"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 507
    const-string v3, "diagnosed_for_stroke"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Stroke"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "under_treatement_for_stroke"

    .line 513
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setPersonalHistory2Screen()V
    .locals 4

    .line 520
    const-string v0, "personalHistory2"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 522
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Personal History"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Kidney Failure"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 526
    const-string v3, "diagnosed_for_kidney_failure"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Kidney Failure"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_kidney_failure"

    .line 532
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Non-Healing Wound"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 537
    const-string v3, "diagnosed_for_non_healing_wound"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Non-Healing Wound"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_non_healing_wound"

    .line 543
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for COPD"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 548
    const-string v3, "diagnosed_for_copd"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for COPD"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_copd"

    .line 553
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Asthama"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 558
    const-string v3, "diagnosed_for_asthama"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Asthama"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "under_treatement_for_asthama"

    .line 564
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setPersonalHistory3Screen()V
    .locals 4

    .line 571
    const-string v0, "personalHistory3"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Personal History"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Oral Cancer"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 577
    const-string v3, "diagnosed_for_oral_cancer"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Oral Cancer"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_oral_cancer"

    .line 582
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Breast Cancer"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 587
    const-string v3, "diagnosed_for_breast_cancer"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Breast Cancer"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "under_treatement_for_breast_cancer"

    .line 593
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ever Diagnosed for Cervical Cancer"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 598
    const-string v3, "diagnosed_for_cervical_cancer"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Currently Under Treatment for Cervical Cancer"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "under_treatement_for_cervical_cancer"

    .line 604
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method

.method public setRiskAssessmentScreen()V
    .locals 5

    .line 322
    const-string v0, "riskAssessment"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedScreen:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Risk Assessment"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you smoke or consume smokeless products such as gutka or khaini"

    .line 327
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 326
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 329
    const-string v3, "smoke_or_consume_gutka"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you consume alcohol daily"

    .line 332
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v4, "consume_alcohol_daily"

    .line 334
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Measurement of waist (in cms)"

    .line 337
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v4, "waist"

    .line 339
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you undertake any physical activities for minimum 150 minutes in a week"

    .line 342
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    .line 344
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you have a family history (any one of your parents or siblings) of high blood pressure, diabetes and heart disease?"

    .line 347
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v3, "bp_diabetes_heart_history"

    .line 349
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "CBAC Score"

    .line 352
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->selectedMemberCbacDetails:Ljava/util/LinkedHashMap;

    const-string v2, "score"

    .line 354
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->hideProcessDialog()V

    return-void
.end method
