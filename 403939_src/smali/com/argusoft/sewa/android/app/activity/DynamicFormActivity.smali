.class public Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "DynamicFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicFormActivity"

.field public static formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;


# instance fields
.field private allowForm:Z

.field private answerString:Ljava/lang/String;

.field private currentLatitude:Ljava/lang/String;

.field private currentLongitude:Ljava/lang/String;

.field dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private formRootView:Landroid/view/View;

.field private formType:Ljava/lang/String;

.field healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

.field healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

.field immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

.field private isLabTestForm:Z

.field private isOnlineSearchPropagated:Ljava/lang/Boolean;

.field private isProperFinish:Z

.field private isVeryHighRisk:Ljava/lang/Boolean;

.field private labTestFormDetId:Ljava/lang/Integer;

.field private labTestVersion:Ljava/lang/String;

.field private lastStoredFormChecksum:Ljava/lang/String;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

.field private myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field ncdScoreService:Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;

.field ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

.field npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

.field rchHighRiskService:Lcom/argusoft/sewa/android/app/core/impl/RchHighRiskServiceImpl;

.field routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

.field schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

.field serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private sharedPref:Landroid/content/SharedPreferences;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isLabTestForm:Z

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isProperFinish:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->answerString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->answerString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->lastStoredFormChecksum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->changeActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finishOpdLabTestForm(Z)V

    return-void
.end method

.method private changeActivity()V
    .locals 12

    .line 782
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "nextEntity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 783
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    const-string v2, "FHW_ANC"

    const/4 v3, 0x1

    const-string v4, "LMPFU"

    if-eqz v1, :cond_2

    .line 784
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    const-string v5, "FHW_PREG_CONF"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "NO"

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isProperFinish:Z

    if-eqz v1, :cond_2

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "memberId"

    .line 788
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "currentGravida"

    .line 789
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 787
    invoke-virtual {v1, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->updateGravidaCountForMother(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 794
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 796
    :try_start_0
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 797
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v10, 0x0

    move-object v7, v0

    .line 796
    invoke-virtual/range {v6 .. v11}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    const-string v5, "entity"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v0, "allowForm"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 812
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    goto :goto_0

    .line 799
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    .line 803
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Some error occurred. Please refresh and try again"

    .line 804
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 805
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    .line 815
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 816
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "memberStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 817
    const-string v1, "MIGRATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 818
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 820
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 823
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "FHW_CS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "FHW_CI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "MEMBER_UPDATE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    goto :goto_2

    :sswitch_3
    const-string v2, "ASHA_PNC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v2, "NWC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_6
    const-string v2, "FHW_WPD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_7
    const-string v2, "FHW_PNC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_9
    const-string v2, "AMRUTPAN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_1

    :sswitch_a
    const-string v2, "AMRUTPAN_SUPERVISION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    .line 847
    :cond_d
    :goto_2
    const-string v2, "memberBean"

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_3

    .line 825
    :pswitch_0
    new-instance v3, Lcom/argusoft/sewa/android/app/model/MemberBean;

    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 826
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 827
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 841
    :pswitch_1
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 842
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 843
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_e

    .line 851
    const-string v2, "familyDataBean"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 856
    :cond_e
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    .line 858
    :cond_f
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    :cond_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ba9e324 -> :sswitch_a
        -0x25d13468 -> :sswitch_9
        -0x938b5b4 -> :sswitch_8
        -0x9387d65 -> :sswitch_7
        -0x93862df -> :sswitch_6
        0x12f9a -> :sswitch_5
        0x4532ffe -> :sswitch_4
        0x56ee471 -> :sswitch_3
        0x798ea0e -> :sswitch_2
        0x7b92d110 -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private checkIfAnyFormSyncIsPending()V
    .locals 4

    .line 209
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->allowForm:Z

    if-eqz v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FormConstants;->NCD_SHEETS:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IDSP_MEMBER"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IDSP_MEMBER_2"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 221
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "memberId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "locationId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 225
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    const-string v3, "FHW_NS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMember(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    .line 231
    const-string v0, "A form for this member has been already filled which is not synced with the server. Please refresh and try again."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showAlertAndFinish(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    const-string v2, "GAURAVI_DIWAS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForLocation(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    const-string v0, "A form for this location has been already filled which is not synced with the server. Please refresh and try again."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showAlertAndFinish(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private destroyWebViews(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 319
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->destroyWebViews(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 324
    :cond_1
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 325
    check-cast p1, Landroid/webkit/WebView;

    .line 326
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 327
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 328
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 331
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 333
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_3
    return-void
.end method

.method private finishOpdLabTestForm(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 669
    :try_start_0
    sput-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    .line 670
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    .line 671
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->resetSharedStructureData()V

    .line 673
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteQuestionAndAnswersByFormCode(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 676
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 678
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :goto_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void

    :catchall_0
    move-exception p1

    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    .line 682
    throw p1
.end method

.method private initView()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->checkIfAnyFormSyncIsPending()V

    return-void
.end method

.method private loadQuestionsAndQuestion()V
    .locals 17

    move-object/from16 v15, p0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form Title : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is Loaded ..................."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicFormActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v2, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    iget-object v4, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/impl/RchHighRiskServiceImpl;

    iget-object v5, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    iget-object v6, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v7, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->ncdScoreService:Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;

    iget-object v8, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    iget-object v9, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v10, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

    iget-object v11, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v12, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;

    iget-object v13, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v14, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

    iget-object v0, v15, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->initIndexQuestionMap(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/SewaService;Lcom/argusoft/sewa/android/app/core/SewaFhsService;Lcom/argusoft/sewa/android/app/core/TechoAshaService;Lcom/argusoft/sewa/android/app/core/RchHighRiskService;Lcom/argusoft/sewa/android/app/core/ImmunisationService;Lcom/argusoft/sewa/android/app/core/NcdService;Lcom/argusoft/sewa/android/app/core/NcdScoreService;Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/core/SchoolService;Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;Lcom/argusoft/sewa/android/app/core/NPCBService;Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;)V

    .line 356
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loadQuestionsBySheet(Ljava/lang/String;)V

    return-void
.end method

.method private navigationFlowForActivity()V
    .locals 3

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 756
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showMorbidity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 759
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v2, "DYNAMIC_FORM"

    invoke-interface {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 760
    const-string v1, "DynamicFormActivity"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private showMorbidity(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 765
    sput-object v0, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->morbidities:Ljava/util/List;

    .line 766
    sput-object v0, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->nextEntity:Ljava/lang/String;

    .line 768
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "isPresent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberStatus"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 771
    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "DEATH"

    .line 772
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    const-string v0, "ASHA_ANC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 774
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->answerString:Ljava/lang/String;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->showANCMorbidity(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->morbidities:Ljava/util/List;

    .line 775
    const-string p1, "ANCMORB"

    sput-object p1, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->nextEntity:Ljava/lang/String;

    .line 776
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkForGpsEnabledForms()V
    .locals 3

    .line 361
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isLabTestForm:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gpsEnabledForms:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 367
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 368
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLatitude:Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLongitude:Ljava/lang/String;

    .line 370
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "currentLatitude"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLatitude:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "currentLongitude"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLongitude:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/PointInPolygon;->coordinateInsidePolygon()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    const-string v0, "You are filling this form from a region out of your area of intervention. Please be present in your AOI to fill the form."

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->showAlertAndExit(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 3

    const/4 v0, 0x0

    .line 729
    sput-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    .line 730
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    .line 731
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->resetSharedStructureData()V

    .line 733
    :try_start_0
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isProperFinish:Z

    if-eqz v0, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->navigationFlowForActivity()V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->answerString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 739
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->lastStoredFormChecksum:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 740
    const-string v2, "storedFormChecksum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v1, -0x1

    .line 742
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setResult(I)V

    .line 747
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->hideProcessDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    .line 750
    throw v0
.end method

.method public getFormEngine()Lcom/argusoft/sewa/android/app/datastructure/FormEngine;
    .locals 1

    .line 891
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    return-object v0
.end method

.method public getLgdWiseCoordinates()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getLgdCodeWiseCoordinates()V

    return-void
.end method

.method synthetic lambda$changeActivity$5$com-argusoft-sewa-android-app-activity-DynamicFormActivity(Landroid/view/View;)V
    .locals 0

    .line 800
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 801
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$onActivityResult$1$com-argusoft-sewa-android-app-activity-DynamicFormActivity()V
    .locals 2

    .line 418
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$6$com-argusoft-sewa-android-app-activity-DynamicFormActivity(Landroid/view/View;)V
    .locals 1

    .line 870
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 871
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 872
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isProperFinish:Z

    .line 873
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->navigateToHomeScreen(Z)V

    .line 874
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    goto :goto_0

    .line 876
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$retrieveSheet$0$com-argusoft-sewa-android-app-activity-DynamicFormActivity()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->generateForm(Landroid/content/Context;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    .line 255
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView()V

    return-void
.end method

.method synthetic lambda$storeOpdLabTestForm$2$com-argusoft-sewa-android-app-activity-DynamicFormActivity()V
    .locals 2

    .line 615
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Saving Data."

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 616
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    return-void
.end method

.method synthetic lambda$storeOpdLabTestForm$3$com-argusoft-sewa-android-app-activity-DynamicFormActivity()V
    .locals 1

    .line 639
    const-string v0, "Your form has been saved successfully"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$storeOpdLabTestForm$4$com-argusoft-sewa-android-app-activity-DynamicFormActivity()V
    .locals 7

    .line 647
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$2;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    .line 658
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v3, "Some error occurred while submitting the form. Please press \'Retry\' to submit the form again or \'Cancel\' to try after sometime."

    const/16 v5, -0x99

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 414
    const-string v0, "_"

    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v1

    const/16 v2, 0x6f

    if-ne p1, v2, :cond_1

    .line 417
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 420
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 421
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLatitude:Ljava/lang/String;

    .line 422
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLongitude:Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "currentLatitude"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLatitude:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "currentLongitude"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLongitude:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/PointInPolygon;->coordinateInsidePolygon()Z

    move-result v0

    if-nez v0, :cond_16

    .line 427
    const-string v0, "You are filling this form from a region out of your area of intervention. Please be present in your AOI to fill the form."

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->showAlertAndExit(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 431
    const-string v4, "data"

    const-string v5, ".jpg"

    const/4 v6, -0x1

    const/16 v7, 0x3cc3

    const-string v8, "DynamicFormActivity"

    const/4 v9, 0x0

    if-ne p1, v7, :cond_4

    if-ne p2, v6, :cond_2

    .line 434
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 436
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 437
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v3, :cond_16

    .line 440
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 441
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 442
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 446
    const-string v0, "Photo captured"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 453
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 454
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    invoke-virtual {v0, v9}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 457
    :cond_3
    const-string v0, "Fail to take photo"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 460
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_7

    .line 464
    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 465
    const-string v0, "Failed to scan QR"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v0

    .line 469
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v1, :cond_6

    .line 471
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/16 v5, 0x411a

    .line 472
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QR Scanner Data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_1
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->parseXml(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAadharTextToBeDisplayedAfterScan(Ljava/util/Map;)Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 481
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    invoke-virtual {v1, v9}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 485
    const-string v0, "Please scan Aadhaar"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No Question found from structure having id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_9

    .line 493
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtTimer:Ljava/util/Timer;

    if-eqz v0, :cond_8

    .line 494
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 496
    :cond_8
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtTimer:Ljava/util/Timer;

    .line 497
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtTimer:Ljava/util/Timer;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x3f6

    if-ne p1, v0, :cond_b

    .line 509
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_16

    if-eqz p3, :cond_a

    .line 512
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 513
    const-string v2, "requestId"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v2, "timestamp"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v2, "userObservedResult"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v2, "capturedImageUri"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 518
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->setORDTTestResult(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 520
    :cond_a
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->resetORDPTestClick(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x3fc

    if-ne p1, v0, :cond_c

    .line 524
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_16

    if-eqz p3, :cond_16

    .line 526
    const-string v1, "healthIdNumber"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 527
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x3fd

    if-ne p1, v0, :cond_d

    .line 531
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_16

    if-eqz p3, :cond_16

    .line 533
    const-class v1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    const-string v1, "OfflineHealthIdBean"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 534
    const-class v2, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x3ff

    if-ne p1, v0, :cond_e

    .line 538
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_16

    if-eqz p3, :cond_16

    .line 540
    const-string v1, "RequestId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 541
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x401

    .line 544
    const-string v1, "IMG_"

    if-ne p1, v0, :cond_11

    .line 545
    const-string v0, "Failed to upload photo"

    if-ne p2, v6, :cond_10

    .line 547
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 548
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getScaledBitmapForDisplay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 549
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getInstance()Lcom/argusoft/sewa/android/app/util/FileUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/argusoft/sewa/android/app/util/FileUtils;->convertBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 553
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v2, :cond_16

    .line 555
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 557
    sget v6, Lcom/argusoft/sewa/android/app/R$id;->captued_image_view:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 558
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 559
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 560
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 563
    :cond_f
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 566
    :catch_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    :cond_10
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x400

    if-ne p1, v0, :cond_16

    .line 572
    const-string v0, "Failed to capture photo"

    if-ne p2, v6, :cond_15

    .line 573
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 576
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Bitmap;

    :cond_12
    if-eqz v9, :cond_14

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getInstance()Lcom/argusoft/sewa/android/app/util/FileUtils;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/argusoft/sewa/android/app/util/FileUtils;->convertBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 582
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_16

    .line 584
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 586
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->captued_image_view:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 587
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 588
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 589
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 592
    :cond_13
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_14
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_15
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    :cond_16
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v0, 0x0

    .line 382
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "DynamicForm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure to close the registration?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 385
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Processing...."

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 389
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->changeActivity()V

    .line 390
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 391
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 399
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 400
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 402
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isProperFinish:Z

    .line 403
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 404
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->changeActivity()V

    .line 405
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 162
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showProcessDialog()V

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getLgdWiseCoordinates()V

    .line 164
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "entity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isVeryHighRisk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isVeryHighRisk:Ljava/lang/Boolean;

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isOnlineSearchPropagated"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isOnlineSearchPropagated:Ljava/lang/Boolean;

    .line 170
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "allowForm"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->allowForm:Z

    .line 171
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isOPDLabTestForm"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isLabTestForm:Z

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "labTestDetId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->labTestFormDetId:Ljava/lang/Integer;

    .line 174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->labTestVersion:Ljava/lang/String;

    .line 176
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isOnlineSearchPropagated:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 177
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    const-string v1, "DYNAMIC_FORM"

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 181
    const-string p1, "Some error occurred. Please try again later."

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showToaster(Ljava/lang/String;)V

    .line 182
    const-string p1, "DynamicForm"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v0, 0x0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formRootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->destroyWebViews(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formRootView:Landroid/view/View;

    .line 310
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onDestroy()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 307
    :try_start_1
    const-string v2, "DynamicFormActivity"

    const-string v3, "Error while destroying webviews"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 309
    :goto_2
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formRootView:Landroid/view/View;

    .line 310
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onDestroy()V

    .line 311
    throw v1
.end method

.method public onFormFillFinish(Ljava/lang/String;Z)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->answerString:Ljava/lang/String;

    .line 688
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isProperFinish:Z

    .line 689
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Saving Data..."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 690
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 691
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    .line 724
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->start()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 864
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 865
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_1

    .line 866
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->backButtonClicked()V

    goto :goto_0

    .line 868
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    if-ne v0, v1, :cond_2

    .line 869
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    .line 880
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure you want to go back to home screen ?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 883
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 885
    :cond_2
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 194
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->retrieveSheet()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 607
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 609
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public retrieveSheet()V
    .locals 4

    .line 247
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formFillUpTime:J

    .line 249
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "formStartDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->loadQuestionsAndQuestion()V

    .line 252
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->checkForGpsEnabledForms()V

    .line 253
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->hideProcessDialog()V

    .line 262
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    const-string v2, "DYNAMIC_FORM"

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 263
    const-string v1, "Some error occurred. Please try again later."

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showToaster(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    :goto_0
    return-void
.end method

.method public setContentView()V
    .locals 3

    .line 271
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->getPageView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formRootView:Landroid/view/View;

    .line 273
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getFullFormName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    const-string v1, "Namoshree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isVeryHighRisk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "VHRPW"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getFullFormName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->isLabTestForm:Z

    const-string v2, "nameOfBeneficiary"

    if-eqz v1, :cond_1

    .line 280
    const-string v0, "OPD Lab Test"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setTitle(Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 282
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setTitle(Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formType:Ljava/lang/String;

    const-string v2, "MEMBER_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ADD_MEMBER"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    :cond_3
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setTitle(Ljava/lang/String;)V

    .line 293
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->hideProcessDialog()V

    :cond_5
    return-void
.end method

.method public showToaster(Ljava/lang/String;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public storeOpdLabTestForm(Ljava/lang/String;)V
    .locals 5

    .line 614
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-1!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLongitude:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "~-2!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->currentLatitude:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "~-8!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 630
    const-string v1, "formStartDate"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "~-9!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 633
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "~"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->answerString:Ljava/lang/String;

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->labTestFormDetId:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->labTestVersion:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->storeOpdLabFormDetails(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 639
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    .line 641
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finishOpdLabTestForm(Z)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 643
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->hideProcessDialog()V

    .line 644
    const-string v0, "DynamicFormActivity"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
