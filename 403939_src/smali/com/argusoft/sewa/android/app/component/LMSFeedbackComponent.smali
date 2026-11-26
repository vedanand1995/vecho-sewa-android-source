.class public Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;
.super Landroidx/appcompat/app/AlertDialog;
.source "LMSFeedbackComponent.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private parentLayout:Landroid/widget/LinearLayout;

.field private viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->init()V

    .line 39
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 40
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    return-object p0
.end method

.method private init()V
    .locals 10

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x32

    const/4 v4, 0x0

    .line 57
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v1, v6, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x1e

    .line 61
    invoke-virtual {v0, v3, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->alert_dialog:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v7, 0x11

    .line 66
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v8, 0xa

    .line 67
    invoke-virtual {v0, v8, v4, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    const-string v9, "Feedback"

    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v8

    .line 69
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSeparator(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v4, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1, v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79
    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v6, "Please rate the content of this lesson."

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    sget v8, Lcom/argusoft/sewa/android/app/R$style;->AlertDialogLabel:I

    invoke-virtual {v3, v6, v8}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2732

    invoke-static {v0, v1, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x14

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 91
    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 94
    new-instance v1, Landroid/widget/RatingBar;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x5

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setNumStars(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 98
    new-instance v2, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)V

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->setCanceledOnTouchOutside(Z)V

    .line 47
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
