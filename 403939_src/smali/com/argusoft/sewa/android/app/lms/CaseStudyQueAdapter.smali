.class public Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CaseStudyQueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private iGetCaseStudyInterface:Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;

.field private minHeight:Ljava/lang/Integer;

.field private questionConfigDataBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final radioGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RadioGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/List;Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->radioGroupMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->minHeight:Ljava/lang/Integer;

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->activity:Landroid/app/Activity;

    .line 48
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->iGetCaseStudyInterface:Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;

    return-void
.end method

.method private getMinHeight()Ljava/lang/Integer;
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->minHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->minHeight:Ljava/lang/Integer;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->minHeight:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-argusoft-sewa-android-app-lms-CaseStudyQueAdapter(ILandroid/widget/RadioGroup;Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 94
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->iGetCaseStudyInterface:Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->radioGroupMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-interface {p3, p4, p1, p2}, Lcom/argusoft/sewa/android/app/lms/IGetCaseStudyInterface;->getAnswersOfCaseStudy(Ljava/util/Map;Ljava/lang/Integer;Landroid/widget/RadioButton;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->onBindViewHolder(Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;I)V
    .locals 10

    .line 61
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->questionLabel:Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "Q%d."

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->queTitle:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->questionImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->questionImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->radioGroupMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->radioGroupMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 76
    new-instance v5, Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v7, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    sget v8, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 81
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->getMinHeight()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setMinHeight(I)V

    const/16 v7, 0x14

    .line 82
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 85
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v8, 0x0

    .line 87
    invoke-virtual {v5, v3, v8, v8, v8}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    const/16 v3, 0x10

    .line 89
    invoke-virtual {v5, v3}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 91
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 93
    new-instance v3, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v0}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;ILandroid/widget/RadioGroup;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object p2, p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->optionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->noOfQue:Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->questionConfigDataBeansList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v6

    aput-object v0, v1, v4

    const-string p2, "%s of %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;
    .locals 2

    .line 55
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->item_case_study:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
