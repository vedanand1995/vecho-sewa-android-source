.class public Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "DataQualityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;
    }
.end annotation


# static fields
.field private static final DATA_QUALITY_DETAILS_SCREEN:Ljava/lang/String; = "dataQualityDetailsScreen"

.field private static final DATA_TABLE_SCREEN:Ljava/lang/String; = "dataTableScreen"


# instance fields
.field private allDataQualityBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            ">;"
        }
    .end annotation
.end field

.field private allVerified:Z

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private dataQualityMemberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field dataQualityService:Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private layoutParams:Landroid/widget/TableRow$LayoutParams;

.field private layoutParams1:Landroid/widget/TableRow$LayoutParams;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private screenName:Ljava/lang/String;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private tableLayout:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allVerified:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->dataQualityMemberDataBeans:Ljava/util/List;

    .line 91
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, -0x1

    invoke-direct {v1, v0, v3, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    .line 92
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v3, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->layoutParams1:Landroid/widget/TableRow$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private addRowToTable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 335
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xf

    const/16 v2, 0xa

    .line 336
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 337
    sget v1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v1, v3, :cond_0

    .line 338
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 340
    :cond_0
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 342
    :goto_0
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 347
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 348
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 350
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    .line 352
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v0, v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->layoutParams1:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v0, v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->tableLayout:Landroid/widget/TableLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private convertToList(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$400(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$300(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v2

    int-to-double v2, v2

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " %"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_0
    const-string p1, "0 %"

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v1
.end method

.method private createTableLayout()V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    const-string v2, "Data Quality Verification Report"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->tableLayout:Landroid/widget/TableLayout;

    .line 176
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    const-string v1, "Service type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v1, "Total calls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v1, "Verification Successful"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v1, "Verification Failed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "%"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    .line 186
    const-string v4, "FHW_CH_SER_VERI"

    const-string v5, "Child vaccination verification"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v4, "FHW_CH_SER_PREG_VERI"

    const-string v5, "Delivery and child verification"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v4, "FHW_DEL_VERI"

    const-string v5, "Delivery verification"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v4, "PREG_REGI_VERI"

    const-string v5, "Pregnancy registration verification"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v4, "FHW_TT_VERI"

    const-string v5, "TT injection verification"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xf

    const/16 v3, 0xa

    .line 194
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 195
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 196
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 198
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    :goto_0
    const/high16 v2, 0x40c00000    # 6.0f

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x11

    .line 205
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 207
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-nez v4, :cond_1

    .line 210
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v1, v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 212
    :cond_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->layoutParams1:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v1, v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allDataQualityBeans:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allDataQualityBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setRowData(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private getCallCount(Lcom/argusoft/sewa/android/app/model/DataQualityBean;)I
    .locals 3

    .line 312
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryHappened()Z

    move-result v0

    .line 315
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryPlaceVerificationDone()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isNoOfChildGenderVerification()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isChildServiceVaccinationStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 324
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isPregnant()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 327
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getTtInjectionReceivedStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getTtInjectionReceivedStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 328
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getTtInjectionReceivedStatus()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CANNOT_DETERMINE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    return v0
.end method

.method private getServiceCallStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 451
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 453
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 456
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allVerified:Z

    if-eqz p1, :cond_0

    .line 458
    const-string v2, "Delivery happened  \n"

    .line 459
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 462
    const-string p1, "Delivery place verification  \n"

    .line 463
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 466
    const-string p1, "No of child and gender verification  \n"

    .line 467
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 470
    const-string p1, "Child vaccination status  \n"

    .line 471
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz p5, :cond_4

    .line 474
    const-string p1, "Pregnancy registration  \n"

    .line 475
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 p1, 0x0

    if-eqz p6, :cond_7

    .line 479
    const-string p2, "YES"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "TT injection received   \n"

    if-nez p2, :cond_6

    const-string p2, "CANNOT_DETERMINE"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    .line 482
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 480
    :cond_6
    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 485
    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_8

    .line 486
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p2, p1, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-object v0
.end method

.method private getStatus(ZLjava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    .line 492
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 494
    new-instance p1, Landroid/text/style/ImageSpan;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->checkmark:I

    invoke-direct {p1, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 495
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    .line 498
    :cond_0
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allVerified:Z

    .line 499
    new-instance p1, Landroid/text/style/ImageSpan;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->cross:I

    invoke-direct {p1, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 500
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->showProcessDialog()V

    .line 119
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 120
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setContentView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 122
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->nextButton:Landroid/widget/Button;

    .line 125
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setBodyDetail()V

    return-void
.end method

.method private setBodyDetail()V
    .locals 1

    .line 167
    const-string v0, "dataTableScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->screenName:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->dataQualityService:Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl;->getAllDataQualityBeans()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allDataQualityBeans:Ljava/util/List;

    .line 169
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->createTableLayout()V

    .line 170
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->hideProcessDialog()V

    return-void
.end method

.method private setDataQualityDetailsScreen()V
    .locals 18

    move-object/from16 v7, p0

    .line 363
    const-string v0, "dataQualityDetailsScreen"

    iput-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->screenName:Ljava/lang/String;

    .line 365
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    const-string v2, "Data Quality Verification Details"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    invoke-static {v0, v8, v9, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 372
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->dataQualityMemberDataBeans:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 373
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->dataQualityMemberDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;

    .line 376
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-static {v1, v8, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/16 v1, 0x14

    .line 378
    invoke-virtual {v12, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 381
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v8, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v1, v8, v9, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 384
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v8, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v1, v8, v9, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v14

    const/16 v1, 0x11

    .line 386
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 388
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v15

    const/high16 v1, 0x41800000    # 16.0f

    if-eqz v15, :cond_0

    .line 390
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 391
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 393
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->getServiceType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 397
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 400
    new-instance v5, Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :sswitch_0
    const-string v2, "FHW_DEL_VERI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v2, "FHW_TT_VERI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_2
    const-string v2, "FHW_CH_SER_VERI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "FHW_CH_SER_PREG_VERI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    const-string v2, "PREG_REGI_VERI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_0

    move-object v8, v5

    move-object v9, v6

    goto/16 :goto_3

    .line 412
    :pswitch_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isDeliveryHappened()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isDeliveryPlaceVerification()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isNoOfChildGenderVerification()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v8, v5

    move-object/from16 v5, v16

    move-object v9, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getServiceCallStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_1
    move-object v8, v5

    move-object v9, v6

    const/4 v5, 0x0

    .line 417
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->getTtInjectionReceivedStatus()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 416
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getServiceCallStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    goto :goto_3

    :pswitch_2
    move-object v8, v5

    move-object v9, v6

    .line 409
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isChildServiceVaccinationStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 408
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getServiceCallStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    goto :goto_3

    :pswitch_3
    move-object v8, v5

    move-object v9, v6

    .line 404
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isDeliveryHappened()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isDeliveryPlaceVerification()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isNoOfChildGenderVerification()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 405
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isChildServiceVaccinationStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 404
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getServiceCallStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    goto :goto_3

    :pswitch_4
    move-object v8, v5

    move-object v9, v6

    .line 420
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isPregnant()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getServiceCallStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .line 424
    :goto_3
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_6

    .line 427
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    :cond_6
    iget-boolean v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->allVerified:Z

    if-eqz v0, :cond_7

    .line 430
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->quiz_checkmark_correct:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 432
    :cond_7
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->quiz_checkmark_incorrect:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :goto_4
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    invoke-static/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSeparator(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, -0x1

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 441
    :cond_8
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 443
    :cond_9
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members found."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    :goto_5
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->hideProcessDialog()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53bd0f8b -> :sswitch_4
        0x26f501f2 -> :sswitch_3
        0x351ae6f5 -> :sswitch_2
        0x4b47751b -> :sswitch_1
        0x66313224 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRowData(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 223
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v3, "FHW_CH_SER_VERI"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;-><init>(Ljava/lang/String;III)V

    .line 224
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v6, "FHW_CH_SER_PREG_VERI"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v4, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;-><init>(Ljava/lang/String;III)V

    .line 225
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v8, "FHW_DEL_VERI"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v7, v4, v4, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;-><init>(Ljava/lang/String;III)V

    .line 226
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v10, "PREG_REGI_VERI"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v9, v4, v4, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;-><init>(Ljava/lang/String;III)V

    .line 227
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->map:Ljava/util/Map;

    const-string v12, "FHW_TT_VERI"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v9, v11, v4, v4, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;-><init>(Ljava/lang/String;III)V

    .line 229
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/model/DataQualityBean;

    .line 232
    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getMemberId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 234
    new-instance v15, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;

    invoke-direct {v15}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;-><init>()V

    .line 235
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setHealthId(Ljava/lang/String;)V

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v11

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getMemberId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 238
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getServiceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setServiceType(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryHappened()Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setDeliveryHappened(Z)V

    .line 240
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryPlaceVerificationDone()Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setDeliveryPlaceVerification(Z)V

    .line 241
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isNoOfChildGenderVerification()Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setNoOfChildGenderVerification(Z)V

    .line 242
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isChildServiceVaccinationStatus()Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setChildServiceVaccinationStatus(Z)V

    .line 243
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isPregnant()Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setPregnant(Z)V

    .line 244
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getTtInjectionReceivedStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->setTtInjectionReceivedStatus(Ljava/lang/String;)V

    .line 245
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->dataQualityMemberDataBeans:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 p1, v11

    .line 248
    :goto_1
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getServiceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v14, 0x4

    const/4 v15, -0x1

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v15, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v15, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v15, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    packed-switch v15, :pswitch_data_0

    goto :goto_3

    .line 260
    :pswitch_0
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v5, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$102(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 261
    invoke-direct {v0, v13}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getCallCount(Lcom/argusoft/sewa/android/app/model/DataQualityBean;)I

    move-result v4

    invoke-static {v5, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$212(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    goto :goto_3

    .line 270
    :pswitch_1
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$108(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    .line 271
    invoke-direct {v0, v13}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getCallCount(Lcom/argusoft/sewa/android/app/model/DataQualityBean;)I

    move-result v4

    invoke-static {v9, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$212(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    goto :goto_3

    .line 250
    :pswitch_2
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$108(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    .line 251
    invoke-direct {v0, v13}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getCallCount(Lcom/argusoft/sewa/android/app/model/DataQualityBean;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$212(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    goto :goto_3

    .line 255
    :pswitch_3
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$102(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 256
    invoke-direct {v0, v13}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getCallCount(Lcom/argusoft/sewa/android/app/model/DataQualityBean;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$212(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    goto :goto_3

    .line 265
    :pswitch_4
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$108(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    .line 266
    invoke-direct {v0, v13}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->getCallCount(Lcom/argusoft/sewa/android/app/model/DataQualityBean;)I

    move-result v4

    invoke-static {v7, v4}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$212(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    :goto_3
    move-object/from16 v11, p1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 277
    :cond_6
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v3

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$302(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 278
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v3

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$302(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 279
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v3

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$302(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 280
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v3

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v7, v3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$302(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 281
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v3

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v9, v3}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->access$302(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->convertToList(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->convertToList(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-direct {v0, v5}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->convertToList(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-direct {v0, v7}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->convertToList(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-direct {v0, v9}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->convertToList(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 290
    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->addRowToTable(Ljava/util/List;)V

    goto :goto_4

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x53bd0f8b -> :sswitch_4
        0x26f501f2 -> :sswitch_3
        0x351ae6f5 -> :sswitch_2
        0x4b47751b -> :sswitch_1
        0x66313224 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .line 130
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;)V

    .line 143
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Data Quality Process?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 146
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 152
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "dataTableScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataQualityDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 159
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->showProcessDialog()V

    .line 155
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 156
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setDataQualityDetailsScreen()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 506
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 507
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 513
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "dataTableScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataQualityDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->showProcessDialog()V

    .line 519
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 520
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setBodyDetail()V

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->navigateToHomeScreen(Z)V

    :cond_3
    :goto_0
    return v1

    .line 508
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 3

    .line 103
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setContentView(Landroid/view/View;)V

    .line 107
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->finish()V

    .line 114
    :cond_1
    const-string v0, "Data Quality"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method
