.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthIdManagementView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentQuestionId:I

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    .line 3149
    const-string v0, "/"

    const-string v2, "mobileNumber"

    const-string v3, "lastName"

    const-string v4, "firstName"

    const-string v5, "dob"

    const-string v6, "memberId"

    :try_start_0
    iget v7, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->currentQuestionId:I

    sput v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    .line 3151
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v7

    .line 3154
    new-instance v8, Landroid/content/Intent;

    iget-object v9, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->activity:Landroid/app/Activity;

    const-class v10, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity_;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3156
    const-string v9, "featureName"

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 3159
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v10

    .line 3158
    invoke-static {v5, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3160
    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3161
    const-string v11, "dd/MM/yyyy"

    if-eqz v9, :cond_0

    .line 3162
    :try_start_1
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 3163
    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 3165
    :cond_0
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "nameBasedOnAadhar"

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v13

    invoke-static {v12, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3166
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v13

    invoke-static {v4, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3167
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v14

    invoke-static {v3, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3168
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "ans12"

    move-object/from16 p1, v10

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 3169
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v10

    .line 3168
    invoke-static {v15, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3170
    const-string v14, "gender"

    if-nez v10, :cond_1

    .line 3171
    :try_start_2
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 3172
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v15

    .line 3171
    invoke-static {v14, v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3174
    :cond_1
    sget-object v15, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v16, v5

    const-string v5, "aadharScannedData"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3175
    sget-object v15, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 3176
    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3177
    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_2
    if-eqz v9, :cond_3

    .line 3180
    const-string v0, "nameOfBeneficiary"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v12, :cond_4

    .line 3183
    invoke-virtual {v8, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz v13, :cond_5

    .line 3186
    invoke-virtual {v8, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    if-nez v10, :cond_6

    .line 3189
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    :cond_6
    if-eqz v10, :cond_8

    .line 3193
    const-string v0, "male"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3194
    const-string v10, "M"

    goto :goto_0

    .line 3195
    :cond_7
    const-string v0, "female"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3196
    const-string v10, "F"

    :cond_8
    :goto_0
    if-nez v15, :cond_9

    .line 3201
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "phoneNumber"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 3203
    :cond_9
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-static {v6, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3208
    :cond_a
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    const/16 v3, 0x1448

    if-ne v0, v3, :cond_b

    if-eqz v7, :cond_b

    const-string v0, "FHW_ANC"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3209
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "dobOfChild"

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 3210
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    .line 3209
    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3211
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3212
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v11, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    .line 3213
    invoke-virtual {v8, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_b
    move-object/from16 v0, p1

    :goto_1
    move-object/from16 v3, v16

    .line 3215
    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    invoke-virtual {v8, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    const-string v0, "aadharScanned"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3218
    invoke-virtual {v8, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3219
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->activity:Landroid/app/Activity;

    const/16 v2, 0x3fc

    invoke-virtual {v0, v8, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3221
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;
    .locals 0

    .line 3141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->activity:Landroid/app/Activity;

    .line 3142
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->currentQuestionId:I

    return-object p0
.end method
