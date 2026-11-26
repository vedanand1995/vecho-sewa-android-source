.class public Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isVillageSelectionScreen:Z

.field locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;

.field private mapOfExpectedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mapOfStatistics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private pageCounter:Ljava/lang/Integer;

.field processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    return-void
.end method

.method private addStatisticTypeHeading()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    const-string v0, "Your Speed Of FHS Verification"

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 330
    const-string v0, "Quality Of Your FHS Verification"

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 332
    const-string v0, "Information About Existing Beneficiaries"

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 334
    const-string v0, "NCD Screening"

    goto :goto_0

    .line 333
    :cond_3
    const-string v0, ""

    .line 337
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 338
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private addTable(Ljava/lang/Long;)V
    .locals 24

    move-object/from16 v1, p0

    .line 185
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 189
    :try_start_0
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v5, "actualID"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :try_start_1
    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addVillageHeading(Lcom/argusoft/sewa/android/app/model/LocationBean;)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addStatisticTypeHeading()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v5

    goto :goto_0

    :catch_1
    move-exception v0

    .line 193
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v2

    .line 195
    :goto_1
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFhwServiceDetailBeansByVillageId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 197
    :cond_0
    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addVillageHeading(Lcom/argusoft/sewa/android/app/model/LocationBean;)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addStatisticTypeHeading()V

    .line 199
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFhwServiceDetailBeansByVillageId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 202
    :goto_2
    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->populateMapOfStatistics(Ljava/util/List;)V

    .line 205
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    .line 206
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 207
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 209
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v4, v6, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 210
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v5, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 215
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v8, 0xf

    .line 216
    invoke-virtual {v5, v2, v8, v2, v8}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 217
    sget v9, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v10, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v9, v10, :cond_1

    .line 218
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_3

    .line 220
    :cond_1
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 222
    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v9, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v9, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 224
    new-instance v10, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v10, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 225
    new-instance v11, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v11, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x11

    .line 226
    invoke-virtual {v9, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 227
    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 228
    invoke-virtual {v11, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 229
    const-string v13, "Performance Item"

    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const-string v14, "Value"

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const-string v15, "Expected"

    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    invoke-virtual {v5, v9, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {v5, v10, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-virtual {v5, v11, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-virtual {v0, v5, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 241
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-int/2addr v10, v9

    .line 243
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_2

    const/4 v4, 0x7

    if-gt v10, v4, :cond_5

    :cond_2
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 244
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    const/16 v4, 0x8

    if-lt v10, v4, :cond_5

    if-gt v10, v2, :cond_5

    :cond_3
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 245
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_4

    const/16 v4, 0xb

    if-lt v10, v4, :cond_5

    const/16 v4, 0xe

    if-gt v10, v4, :cond_5

    :cond_4
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 246
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_6

    if-ge v10, v8, :cond_6

    :cond_5
    const/4 v4, 0x0

    :goto_5
    const/4 v9, 0x1

    goto :goto_4

    .line 250
    :cond_6
    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v4, v2, v8, v2, v8}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 252
    sget v9, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v9, v2, :cond_7

    .line 253
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v4, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_6

    .line 255
    :cond_7
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v4, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 257
    :goto_6
    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v2, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v9, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v9, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 260
    new-instance v8, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v8, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v3

    const/16 v3, 0x11

    .line 261
    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 262
    invoke-virtual {v9, v3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 263
    invoke-virtual {v8, v3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    if-nez v11, :cond_8

    .line 265
    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 269
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-object/from16 v21, v13

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_9

    .line 272
    :cond_8
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v19, v5

    const-string v5, "%s"

    move/from16 v20, v10

    const/4 v10, 0x2

    if-ne v3, v10, :cond_9

    .line 275
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v13

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->getProportionForTrueValidationsStatistics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v10, v16

    const/4 v3, 0x1

    aput-object v13, v10, v3

    .line 275
    const-string v13, "%s%s"

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_9
    move-object/from16 v21, v13

    const/4 v3, 0x1

    const/16 v16, 0x0

    .line 278
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v10, v13, v16

    invoke-static {v5, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :goto_7
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_b

    .line 281
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v22, 0x0

    cmp-long v10, v12, v22

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    const/4 v10, 0x1

    .line 284
    new-array v12, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 282
    const-string v3, "N/A"

    invoke-virtual {v8, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_9
    invoke-virtual {v4, v2, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {v4, v9, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v4, v8, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-virtual {v0, v4, v11}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move/from16 v10, v20

    move-object/from16 v13, v21

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/16 v8, 0xf

    goto/16 :goto_5

    .line 294
    :cond_c
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->hideProcessDialog()V

    return-void
.end method

.method private addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 344
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private addVillageHeading(Lcom/argusoft/sewa/android/app/model/LocationBean;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->fhsLastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_0
    const-string p1, "All Village"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :goto_0
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSelectionSpinner()V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 301
    const-string v2, "All"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 303
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

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

    .line 304
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 307
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->spinner:Landroid/widget/Spinner;

    .line 308
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->hideProcessDialog()V

    return-void
.end method

.method private getProportionForTrueValidationsStatistics(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 448
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 452
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "Number and proportion of family members for whom you entered Phone Number"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "Number and proportion of true validation by GVK EMRI call center"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "Number and proportion of family members for whom you entered Aadhaar Number"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    const-string v4, "%.2f"

    const-string v8, ""

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 454
    :pswitch_0
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v9, "Total number of families in TeCHO as of today"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_5

    .line 455
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-nez v11, :cond_4

    goto :goto_1

    .line 458
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 459
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v1, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v3, v7

    div-float/2addr v1, v3

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 458
    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    :goto_1
    return-object v8

    .line 463
    :pswitch_1
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v9, "Total number of family members in TeCHO as of today"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_7

    .line 464
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-nez v11, :cond_6

    goto :goto_3

    .line 467
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 468
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v1, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v3, v7

    div-float/2addr v1, v3

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 467
    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :goto_2
    const-string p1, "%)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x4cca2441 -> :sswitch_2
        -0x43791735 -> :sswitch_1
        0x28eb447f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initView()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->showProcessDialog()V

    .line 113
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 114
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->setContentView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 116
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->nextButton:Landroid/widget/Button;

    .line 119
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->setBodyDetail()V

    return-void
.end method

.method private populateMapOfStatistics(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 354
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Number of families imported from E mamta (Target)"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v4, "Number of families verified by you till now"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v5, "Number of families verified by you in last 3 days"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v6, "Number of families archived by you till now"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v7, "Number of new families added by you till now"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v8, "Total number of families in TeCHO as of today"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v9, "Total number of family members in TeCHO as of today"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v10, "Number and proportion of true validation by GVK EMRI call center"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v11, "Number and proportion of family members for whom you entered Aadhaar Number"

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v12, "Number and proportion of family members for whom you entered Phone Number"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v13, "Number of eligible couples in TeCHO today"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v14, "Number of pregnant women in TeCHO today"

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v15, "Number of under 5 children in TeCHO today"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v16, v15

    const-string v15, "Number of seasonal migrant families"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v17, v15

    const-string v15, "Number of members screened"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v18, v15

    const-string v15, "Number of male members screened"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v19, v15

    const-string v15, "Number of female members screened"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v20, v15

    const-string v15, "Number of members screened for hypertension"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v21, v15

    const-string v15, "Number of members screened for diabetes"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v22, v15

    const-string v15, "Number of members screened for oral cancer"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v23, v15

    const-string v15, "Number of female members screened for breast cancer"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 v24, v15

    const-string v15, "Number of female members screened for cervical cancer"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v16

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v17

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v18

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v19

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v20

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v21

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v22

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v23

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    move-object/from16 v15, v24

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    const-string v15, "Number of female members screened for cervical cancer"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    .line 401
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    move-object/from16 p1, v1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesImportedFromEMamta()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v15, v3, v1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesVerifiedTillNow()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v4, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesVerifiedLast3Days()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v5, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesArchivedTillNow()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v6, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNewFamiliesAddedTillNow()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v7, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalFamiliesInIMTTillNow()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v8, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalMembersInIMTTillNow()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v9, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNumberOfTrueValidationsByGvkEmri()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v10, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 409
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNumberOfMembersWithAadharNumberEntered()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v11, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNumberOfMembersWithMobileNumberEntered()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v12, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalEligibleCouplesInTeCHO()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v13, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalPregnantWomenInTeCHO()Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getUnder5ChildrenTillNow()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v25, v14

    move-object/from16 v14, v16

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalNumberOfSeasonalMigrantFamilies()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v17

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalMembersScreened()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v18

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalMaleMembersScreened()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v19

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalFemaleMembersScreened()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v20

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 418
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalMembersScreenedForHypertension()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v21

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalMembersScreenedForDiabetes()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v22

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalMembersScreenedForOral()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v23

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalFemaleMembersScreenedForBreast()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v14, v24

    invoke-direct {v0, v1, v14, v15}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfStatistics:Ljava/util/Map;

    const-string v15, "Number of female members screened for cervical cancer"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNcdTotalFemaleMembersScreenedForCervical()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v15, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesImportedFromEMamtaExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v3, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesVerifiedTillNowExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v4, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesVerifiedLast3DaysExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v5, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getFamiliesArchivedTillNowExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v6, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNewFamiliesAddedTillNowExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v7, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNewFamiliesAddedTillNowExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v8, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalMembersInIMTTillNowExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v9, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNumberOfTrueValidationsByGvkEmriExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v10, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    .line 434
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNumberOfMembersWithAadharNumberEnteredExpectedValue()Ljava/lang/Long;

    move-result-object v14

    .line 433
    invoke-direct {v0, v1, v11, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    .line 436
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getNumberOfMembersWithMobileNumberEnteredExpectedValue()Ljava/lang/Long;

    move-result-object v14

    .line 435
    invoke-direct {v0, v1, v12, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 437
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalEligibleCouplesInTeCHOExpectedValue()Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v13, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 438
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalPregnantWomenInTeCHOExpectedValue()Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v15, v25

    invoke-direct {v0, v1, v15, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getUnder5ChildrenTillNowExpectedValue()Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v25, v3

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v3, v14}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->mapOfExpectedValues:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;->getTotalNumberOfSeasonalMigrantFamiliesExpectedValue()Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v14, v17

    invoke-direct {v0, v1, v14, v2}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addValueInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v1, p1

    move-object v14, v15

    move-object/from16 v3, v25

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private setBodyDetail()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    .line 126
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    .line 133
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_8

    .line 140
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 146
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    .line 152
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 155
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    goto :goto_1

    .line 157
    :cond_3
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    .line 158
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    goto :goto_2

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v0, "Processing...."

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 162
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 163
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->retrieveWorkLog()V

    .line 165
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 166
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Main Menu"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->navigateToHomeScreen(Z)V

    return-void

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 173
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    goto :goto_2

    .line 177
    :cond_7
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 556
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 557
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 558
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 559
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_0

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 561
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 562
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 563
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 564
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->isVillageSelectionScreen:Z

    .line 565
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 566
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 568
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 570
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 571
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->pageCounter:Ljava/lang/Integer;

    .line 574
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->locationId:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 575
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 577
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->addTable(Ljava/lang/Long;)V

    :cond_5
    :goto_0
    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->setContentView(Landroid/view/View;)V

    .line 97
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->backgroundHandler:Landroid/os/Handler;

    .line 101
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
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->finish()V

    .line 108
    :cond_1
    const-string v0, "Work Status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveWorkLog()V
    .locals 14

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getWorkLog()Ljava/util/List;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    .line 482
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 483
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x1

    .line 485
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    .line 488
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getCheckSum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getFileWorkLog(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 489
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_3

    .line 490
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 492
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->success:I

    .line 493
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 496
    :cond_2
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->success:I

    .line 497
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 499
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 500
    :cond_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v7, "P"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 501
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 503
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    .line 504
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 507
    :cond_5
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    .line 508
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 510
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 511
    :cond_6
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Q"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 512
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->queue:I

    .line 513
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 515
    :cond_7
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v7, "E"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 516
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 517
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->error:I

    .line 518
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 519
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 520
    :cond_8
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v7, "HE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 521
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 524
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->warning:I

    .line 525
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 528
    :cond_a
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->warning:I

    .line 529
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getDisplayBeneficiaryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 531
    :goto_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 535
    :cond_b
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v9, "There is no worklog to display"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_c
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity$1;

    invoke-direct {v0, p0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 551
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
