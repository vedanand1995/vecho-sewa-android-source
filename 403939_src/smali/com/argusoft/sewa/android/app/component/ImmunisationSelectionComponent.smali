.class public Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;
.super Landroid/widget/LinearLayout;
.source "ImmunisationSelectionComponent.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXCLUDE_VITAMIN_A_IMMUNISATION:Ljava/lang/String; = "excludeVitaminA"

.field private static final ONLY_VITAMIN_A_IMMUNISATION:Ljava/lang/String; = "onlyVitaminA"

.field private static final SHOW_ALL_IMMUNISATION:Ljava/lang/String; = "showAll"


# instance fields
.field private allImmDateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentDate:Ljava/util/Date;

.field private dob:Ljava/util/Date;

.field private dueImmunisations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private givenImmunisations:Ljava/lang/String;

.field private immDateCheckBoxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/checkbox/MaterialCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private immDateTextViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/textview/MaterialTextView;",
            ">;"
        }
    .end annotation
.end field

.field private newImmDateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, "showAll"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->type:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->currentDate:Ljava/util/Date;

    .line 74
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 76
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setBasicDataForImmunisations()V

    .line 77
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setMainLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/Map;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, "showAll"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->type:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 85
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    .line 86
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    .line 87
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->currentDate:Ljava/util/Date;

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setMainLayout()V

    return-void
.end method

.method private getBodyLayout()Landroid/widget/LinearLayout;
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getImmunisationSelectionLayout(Landroid/widget/LinearLayout;)V

    return-object v0
.end method

.method private getDateSelectorClickListener(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getDateSetListener(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object p1

    .line 374
    new-instance p3, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Lcom/google/android/material/textview/MaterialTextView;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    return-object p3
.end method

.method private getDateSelectorLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 11

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v4, 0x10

    .line 339
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 341
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    const-string v5, "Select date"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    .line 342
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->immDateTextViewMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_calender:I

    const/4 v8, 0x2

    invoke-static {v5, v8, v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v5

    .line 348
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v10, 0xa

    .line 349
    invoke-virtual {v6, v2, v10, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 350
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->cross:I

    invoke-static {v2, v8, v5, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v2

    .line 354
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 355
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 356
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x8

    .line 358
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    sget v3, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v5, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v3, v5, :cond_0

    .line 361
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->training_custom_datepicker:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->custom_datepicker:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :goto_0
    invoke-direct {p0, p1, v4, v2}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getDateSelectorClickListener(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getDateSetListener(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .line 403
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 8

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 178
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {v5, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v1, v2, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v5, 0x11

    .line 179
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 180
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    const-string v7, "Vaccine"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct {v6, v4, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v1, v2, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 185
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    const-string v3, "Date"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getImmunisationSelectionLayout(Landroid/widget/LinearLayout;)V
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->immDateTextViewMap:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->immDateCheckBoxMap:Ljava/util/Map;

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-static {v2, v5, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    .line 207
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 209
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "isOutOfSession"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getVaccineCheckBox(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getVaccineNameView(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getVaccineDateView(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void

    .line 198
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    const-string v0, "No more vaccines due"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getVaccineCheckBox(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, -0x1

    invoke-static {v0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v1

    .line 223
    new-instance v2, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->immDateCheckBoxMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getVaccineDateView(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 271
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v9, 0x0

    invoke-direct {v2, v9, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, -0x1

    const/4 v10, 0x1

    .line 304
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 271
    invoke-static {v0, v3, v10, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 272
    invoke-direct/range {p0 .. p1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getDateSelectorLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v13, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 275
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 278
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 279
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 281
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->isImmunisationMissedOrNotValid(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v2

    .line 283
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    const-string v5, "Missed, Vaccine Valid Date Range: "

    const-string v6, "Due Now, Vaccine Valid Date Range: "

    const-string v7, "Vaccine Valid Date Range: "

    if-eqz v0, :cond_2

    :try_start_0
    const-string v10, "After"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 288
    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 289
    aget-object v10, v10, v9

    invoke-virtual {v13, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 290
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 291
    invoke-virtual {v4, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 294
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 297
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/16 v16, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v16, 0x1

    goto :goto_2

    .line 301
    :cond_2
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0x1

    .line 302
    :try_start_1
    aget-object v10, v10, v16

    invoke-virtual {v13, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 303
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 304
    invoke-virtual {v4, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 307
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 310
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 314
    :goto_2
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 318
    :cond_5
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/16 v4, 0xa

    .line 319
    invoke-virtual {v0, v4, v4, v2, v4}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 320
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    const/16 v2, 0x10

    .line 321
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 322
    invoke-virtual {v15, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    goto :goto_4

    .line 324
    :cond_6
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    const-string v4, "Due Now"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, -0xffff01

    .line 325
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    goto :goto_4

    .line 326
    :cond_7
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    const-string v3, "Missed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, -0x10000

    .line 327
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 329
    :cond_8
    :goto_4
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 331
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    return-object v12
.end method

.method private getVaccineNameView(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v0, v4, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x11

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    const/4 v1, 0x4

    .line 264
    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 265
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private setAnswer(Ljava/lang/String;)V
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 433
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    if-nez v2, :cond_1

    goto :goto_0

    .line 438
    :cond_1
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->vaccinationValidationForChild(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected date for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been removed because it was dependent on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->immDateTextViewMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v2, :cond_2

    .line 447
    const-string v3, "Select date"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->immDateCheckBoxMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 451
    invoke-virtual {v2, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 453
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p1, :cond_7

    .line 458
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    .line 459
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 460
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 462
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 464
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 468
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Immunisation Component Answer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private setBasicDataForImmunisations()V
    .locals 5

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->currentDate:Ljava/util/Date;

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 107
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v1, v0

    if-lez v1, :cond_1

    .line 110
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    new-instance v2, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    .line 116
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 117
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 118
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->givenImmunisations:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 122
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getImmunisationDateMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    .line 132
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 133
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 135
    new-instance v2, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->currentDate:Ljava/util/Date;

    .line 139
    :cond_4
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 140
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->type:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private setMainLayout()V
    .locals 8

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    const-string v2, "No vaccines due"

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->addView(Landroid/view/View;)V

    return-void

    .line 155
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->givenImmunisations:Ljava/lang/String;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 156
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    .line 158
    const-string v1, "excludeVitaminA"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->vitaminAVaccines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 160
    :cond_1
    const-string v1, "onlyVitaminA"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->vitaminAVaccines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    const-string v2, "No Vitamin A doses due"

    .line 165
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dueImmunisations:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getHeaderLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->getBodyLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    :goto_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method private vitaminAVaccines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    const-string v1, "VITAMIN_A"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getAnswer()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    return-object v0
.end method

.method synthetic lambda$getDateSelectorClickListener$1$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Lcom/google/android/material/textview/MaterialTextView;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/view/View;)V
    .locals 11

    .line 376
    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 377
    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "/"

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 378
    array-length p3, p1

    const/4 v4, 0x3

    if-ne p3, v4, :cond_0

    .line 379
    new-instance p3, Landroid/app/DatePickerDialog;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object v5, p3

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 382
    new-instance p3, Landroid/app/DatePickerDialog;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 386
    new-instance p3, Landroid/app/DatePickerDialog;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 389
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xa

    .line 390
    invoke-virtual {p1, p2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 391
    invoke-virtual {p1, p2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 392
    invoke-virtual {p1, p2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 393
    invoke-virtual {p1, p2, v3}, Ljava/util/Calendar;->set(II)V

    .line 394
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Asha"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    .line 395
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 397
    :cond_2
    invoke-virtual {p3}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 398
    invoke-virtual {p3}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method synthetic lambda$getDateSetListener$2$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Lcom/google/android/material/textview/MaterialTextView;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 421
    const-string p4, "Select date"

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 424
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$getDateSetListener$3$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;Landroid/widget/DatePicker;III)V
    .locals 7

    .line 404
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    .line 405
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 406
    sget-object p5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    iget-object p6, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    .line 407
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    .line 406
    invoke-interface {p5, p6, p7, p1, v0}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->vaccinationValidationForChild(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 409
    const-string p4, "Select date"

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x8

    .line 412
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {p5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->allImmDateMap:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p6

    invoke-interface {p5, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p6

    invoke-interface {p5, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance p5, Ljava/text/SimpleDateFormat;

    const-string p6, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p7

    invoke-direct {p5, p6, p7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p4, 0x0

    .line 418
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    new-instance p4, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Lcom/google/android/material/textview/MaterialTextView;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    :goto_0
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setAnswer(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getVaccineCheckBox$0$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 224
    const-string p3, "sessionId"

    if-eqz p4, :cond_3

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    .line 227
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "isOutOfSession"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 229
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;->checkImmunisationStockAvailable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 232
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->dob:Ljava/util/Date;

    .line 233
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v3

    .line 232
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->vaccinationValidationForChild(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 236
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    .line 238
    invoke-virtual {p2, p3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 239
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;

    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 244
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 243
    invoke-interface {p2, p3, p1}, Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;->addImmunisationToInventory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->newImmDateMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;

    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 250
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 249
    invoke-interface {p2, p3, p1}, Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;->removeImmunisationFromInventory(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setAnswer(Ljava/lang/String;)V

    return-void
.end method

.method public resetComponent()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->removeAllViews()V

    .line 93
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setBasicDataForImmunisations()V

    .line 94
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->setMainLayout()V

    return-void
.end method
