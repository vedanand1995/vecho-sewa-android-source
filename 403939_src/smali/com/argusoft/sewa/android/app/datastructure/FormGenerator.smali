.class public Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;
.super Ljava/lang/Object;
.source "FormGenerator.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildPhtmlView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9

    .line 215
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 219
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, "text/html"

    move-object v0, v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    const-string p2, "prescriptionCard"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v6

    .line 226
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 227
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v1, 0x44228000    # 650.0f

    .line 231
    invoke-static {p2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 233
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;)V

    .line 238
    const-string v1, "Download Card"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "baseline_cloud_download_24"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 244
    :cond_2
    new-instance v1, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$1;

    invoke-direct {v1, p0, v6}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$1;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 p2, 0x0

    const/16 v1, 0x14

    .line 270
    invoke-virtual {p0, p2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public static generateQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V
    .locals 11

    .line 75
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->relaxMandatoryIfUnder18(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setTitleView(Lcom/google/android/material/textview/MaterialTextView;)V

    .line 83
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    const-string v3, "T"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatorySubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubTitleView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubTitleView(Landroid/widget/TextView;)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 101
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "notBoldQuestion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionView(Landroid/widget/TextView;)V

    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHelpvideofield()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, p1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionView(Landroid/widget/TextView;)V

    goto :goto_2

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHelpvideofield()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, p1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionView(Landroid/widget/TextView;)V

    .line 116
    :goto_2
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->generateQuestionTypeView(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 120
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    array-length v4, v1

    if-lez v4, :cond_10

    .line 123
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_10

    aget-object v7, v1, v6

    .line 124
    const-string v8, "-"

    invoke-static {v7, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 125
    aget-object v8, v7, v5

    const-string v9, "hasMultiMedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 126
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDataMapValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 127
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 128
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 129
    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    const-string v10, "gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "png"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "psd"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "tif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "jpeg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_5

    .line 132
    :cond_8
    const-string v8, "amr"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "mp3"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "wma"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    .line 134
    :cond_9
    const-string v8, "mp4"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "avi"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "mpg"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "3gp"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SVM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 136
    aget-object v7, v7, v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->getMandatoryVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 138
    :cond_b
    aget-object v7, v7, v2

    invoke-static {p1, v7}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->getVideo(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 133
    :cond_c
    :goto_4
    aget-object v7, v7, v2

    invoke-static {p1, p0, v7}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->getAudio(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 131
    :cond_d
    :goto_5
    invoke-static {p1, v8}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->getImage(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 143
    :cond_e
    const-string v7, "No Media found"

    const/4 v8, 0x0

    invoke-static {v8, v8, p1, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_f
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 151
    :cond_10
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 152
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    :cond_11
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 156
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    :cond_12
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    :cond_13
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    :cond_14
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;

    .line 170
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->getListView()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 172
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 175
    :cond_15
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    :cond_16
    :goto_7
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionUIFrame(Ljava/lang/Object;)V

    return-void
.end method

.method private static generateQuestionTypeView(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 284
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormulaForHiddenQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {v7, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    .line 288
    :goto_0
    const-string v2, "CB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, -0x1

    if-nez v2, :cond_7e

    const-string v2, "CBDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_16

    .line 291
    :cond_1
    const-string v2, "ACDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    invoke-static {v1, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAutoCompleteTextView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 294
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 295
    :cond_2
    const-string v2, "RB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 296
    invoke-static {v1, v7, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getRadioGroup(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;IZ)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 297
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 298
    :cond_3
    const-string v2, "CDB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    invoke-static/range {p0 .. p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCustomDatePicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 300
    :cond_4
    const-string v2, "CTP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    invoke-static/range {p0 .. p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCustomTimePicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 302
    :cond_5
    const-string v2, "AB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 303
    invoke-static {v1, v5, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAgeBox(Landroid/content/Context;ILcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 304
    :cond_6
    const-string v2, "AD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "-"

    const/4 v9, 0x2

    const-string v10, "null"

    const-string v11, "Not available"

    if-eqz v2, :cond_9

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_7

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_7
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 312
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 313
    invoke-virtual {v7, v11}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 314
    invoke-static {v11, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 316
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v11

    .line 320
    :cond_8
    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 321
    :cond_9
    const-string v2, "TBWA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 322
    invoke-static {v1, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAudioTextBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 323
    :cond_a
    const-string v2, "TA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v12, 0x32

    if-eqz v2, :cond_e

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    invoke-static {v1, v0, v5, v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/16 v2, -0xa

    .line 325
    invoke-virtual {v0, v6, v2, v6, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 326
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 327
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;

    invoke-direct {v3, v1, v7}, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 330
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_c

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_c
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 337
    invoke-virtual {v7, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_d
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 342
    :cond_e
    const-string v2, "NUB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v13, -0x14

    const/16 v14, 0x2002

    if-eqz v2, :cond_12

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    invoke-static {v1, v0, v5, v2, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 345
    invoke-virtual {v0, v6, v13, v6, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 346
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 347
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;

    invoke-direct {v3, v1, v7}, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 350
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_10

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    :cond_10
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 357
    invoke-virtual {v7, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_11
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 362
    :cond_12
    const-string v2, "TB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    const-string v9, "onlyNumbers"

    const-string v14, "GreaterThen0"

    const-string v12, "Numeric"

    const-string v4, "TBWSC"

    const/4 v6, 0x0

    if-nez v15, :cond_70

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    goto/16 :goto_11

    .line 429
    :cond_13
    const-string v2, "TBCL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 432
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 433
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 434
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_1

    .line 438
    :cond_15
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v9, 0x2

    goto :goto_2

    :cond_16
    :goto_1
    const/16 v9, 0x2002

    goto :goto_2

    :cond_17
    const/4 v9, -0x1

    .line 444
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    invoke-static {v1, v0, v5, v2, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/16 v2, 0x3c

    const/4 v3, 0x0

    .line 445
    invoke-virtual {v0, v3, v13, v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 446
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 447
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;

    invoke-direct {v3, v1, v7}, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 448
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;-><init>(Landroid/widget/EditText;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 451
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_19

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    :cond_19
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_1a
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 464
    invoke-static {v7, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto/16 :goto_17

    .line 465
    :cond_1b
    const-string v2, "QRS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 466
    invoke-static {v1, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getQRScannerView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 467
    :cond_1c
    const-string v2, "PP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1d

    .line 470
    invoke-static {v7, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getPhotoPickerNew(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 472
    :cond_1d
    invoke-static {v7, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getPhotoPicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 474
    :cond_1e
    const-string v2, "SV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getVideoShow(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 476
    :cond_1f
    const-string v2, "SVM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-nez v0, :cond_20

    .line 478
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->videoShownMap:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryVideoShow(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 481
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    .line 482
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->videoShownMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryVideoShow(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 485
    :cond_21
    const-string v2, "WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 490
    array-length v2, v0

    if-lez v2, :cond_22

    const/4 v2, 0x0

    .line 491
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/lit8 v16, v2, 0x1

    goto :goto_3

    :cond_22
    const/4 v4, 0x1

    const/16 v16, 0x1

    .line 493
    :goto_3
    array-length v2, v0

    if-le v2, v4, :cond_23

    .line 494
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move v5, v0

    move/from16 v4, v16

    goto :goto_5

    :cond_23
    move/from16 v4, v16

    goto :goto_4

    :cond_24
    const/4 v4, 0x1

    :goto_4
    const/4 v5, 0x0

    .line 498
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_25
    const/4 v3, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    .line 501
    invoke-static/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getWeightBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;IZZLjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 502
    :cond_26
    const-string v2, "WD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_27

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_27
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 510
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_6

    .line 513
    :cond_28
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    move-object v11, v0

    .line 516
    :cond_29
    :goto_6
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->setWeightDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 517
    :cond_2a
    const-string v2, "TEMB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 518
    invoke-static {v1, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getTemperatureBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 519
    :cond_2b
    const-string v2, "LF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "visitHistory"

    const-string v8, "uniqueHealthId"

    if-eqz v2, :cond_35

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2c
    move-object v6, v0

    .line 527
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 528
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_7

    .line 531
    :cond_2d
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    move-object v11, v0

    .line 533
    :cond_2e
    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 534
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    :cond_2f
    if-eqz v6, :cond_30

    .line 538
    const-string v0, "malnutritionGrade"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 539
    invoke-static {v1, v11, v5, v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    if-eqz v1, :cond_31

    const/16 v2, 0x1e

    .line 541
    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    goto :goto_8

    .line 544
    :cond_30
    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    :cond_31
    :goto_8
    if-eqz v11, :cond_33

    .line 546
    const-string v0, "<"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_32

    const/4 v0, 0x0

    .line 549
    invoke-static {v11, v0}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 548
    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 553
    :cond_32
    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 552
    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :cond_33
    :goto_9
    invoke-virtual {v7, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-nez v0, :cond_34

    .line 559
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberUHId:Ljava/lang/String;

    goto :goto_a

    .line 561
    :cond_34
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberUHId:Ljava/lang/String;

    :goto_a
    const/4 v1, 0x1

    .line 563
    invoke-static {v7, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto/16 :goto_17

    .line 564
    :cond_35
    const-string v2, "PHTML"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v9, "FormGenerator"

    if-eqz v2, :cond_3b

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_36

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_36
    move-object v6, v0

    .line 572
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 573
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_b

    .line 576
    :cond_37
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    move-object v11, v0

    .line 578
    :cond_38
    :goto_b
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 579
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    .line 585
    :cond_39
    :try_start_0
    invoke-static {v1, v6, v11}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->buildPhtmlView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "WebView unavailable, falling back to plain text for PHTML question "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 600
    :goto_c
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-nez v0, :cond_3a

    .line 603
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberUHId:Ljava/lang/String;

    goto :goto_d

    .line 605
    :cond_3a
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberUHId:Ljava/lang/String;

    :goto_d
    const/4 v2, 0x1

    .line 607
    invoke-static {v7, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto/16 :goto_17

    :cond_3b
    const/4 v2, 0x1

    .line 608
    const-string v4, "MS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 609
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;

    const/4 v4, 0x0

    invoke-direct {v0, v7, v2, v4}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ZZ)V

    .line 610
    invoke-static {v1, v7, v5, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCheckBoxInGroup(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 611
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_3c
    const/4 v4, 0x0

    .line 612
    const-string v2, "SCB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 614
    invoke-static {v7, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v0

    .line 615
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 616
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 617
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 619
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 623
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_f

    :cond_3e
    const/4 v2, 0x0

    .line 624
    :goto_f
    invoke-static {v1, v0, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;

    const/4 v4, 0x0

    invoke-direct {v1, v7, v4, v2}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ZZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    :cond_3f
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_40

    const/4 v2, 0x0

    .line 634
    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    .line 636
    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 640
    :cond_40
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 641
    :cond_41
    const-string v2, "BPM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 642
    invoke-static {v1, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getBloodPressureBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 643
    :cond_42
    const-string v2, "PA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v0, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAudioPlayer(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 645
    :cond_43
    const-string v2, "CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "F"

    if-eqz v2, :cond_47

    .line 646
    invoke-virtual {v7, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_44

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_44
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :cond_45
    if-nez v6, :cond_46

    .line 656
    const-string v6, "108"

    .line 658
    :cond_46
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCallView(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 659
    :cond_47
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 660
    invoke-virtual {v7, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 661
    :cond_48
    const-string v2, "LIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_49

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    :cond_49
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_4a
    move-object v0, v6

    :goto_10
    if-eqz v0, :cond_4b

    .line 670
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 673
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;

    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getListOfLIC()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 676
    :cond_4b
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;

    invoke-direct {v0, v1, v6}, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 678
    :cond_4c
    const-string v2, "RBD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 679
    invoke-static/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v0

    if-eqz v0, :cond_7f

    const/4 v2, 0x1

    .line 681
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setIsVaccinations(Z)V

    .line 682
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyVaccination;

    invoke-direct {v2, v1, v7}, Lcom/argusoft/sewa/android/app/component/MyVaccination;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setMyVaccination(Lcom/argusoft/sewa/android/app/component/MyVaccination;)V

    .line 683
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getVaccinationView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 685
    :cond_4d
    const-string v2, "SRBD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v6, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getRadioButtonDate(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 687
    :cond_4e
    const-string v2, "CTB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 688
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCheckBoxWithTextBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 689
    :cond_4f
    const-string v2, "ML"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 690
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 691
    :cond_50
    const-string v2, "DMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 692
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-static {v1, v0, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMembersListForLCDCCampaign(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 693
    :cond_51
    const-string v2, "FMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 694
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-static {v1, v0, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMembersListViewForFilariasisCampaign(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 695
    :cond_52
    const-string v2, "MFN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 696
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullNameForDisplay(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 697
    :cond_53
    const-string v2, "MCR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 698
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMotherChildRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 699
    :cond_54
    const-string v2, "OS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 700
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getOralScreeningComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 701
    :cond_55
    const-string v2, "BS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 702
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getBreastScreeningComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 703
    :cond_56
    const-string v2, "BMI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 704
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getBMIComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 705
    :cond_57
    const-string v2, "BMIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 706
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getBMIComponentAdolescent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 707
    :cond_58
    const-string v2, "HB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 708
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHBComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 709
    :cond_59
    const-string v2, "HIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 710
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    invoke-static {v1, v7, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthInfrastructureComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 711
    :cond_5a
    const-string v2, "HIC_NPCB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 712
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    invoke-static {v1, v7, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthInfrastructureComponentNPCB(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 713
    :cond_5b
    const-string v2, "HWR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 714
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHusbandWifeRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 715
    :cond_5c
    const-string v2, "IGC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 716
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getNewImmunisationGivenComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 717
    :cond_5d
    const-string v2, "CGCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 718
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 719
    :cond_5e
    const-string v2, "SC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 720
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getSchoolComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 721
    :cond_5f
    const-string v2, "RC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 722
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getRegionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 723
    :cond_60
    const-string v2, "VS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 724
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getVillageSearchComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 725
    :cond_61
    const-string v2, "LDD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 726
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getLocationDrillDownComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 727
    :cond_62
    const-string v2, "OBVC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 728
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getOTPBasedVerificationComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 729
    :cond_63
    const-string v2, "FSC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 730
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getFormSubmissionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 731
    :cond_64
    const-string v2, "MDC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 732
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMemberDetailsComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 733
    :cond_65
    const-string v2, "ORDT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 734
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getORDTComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 735
    :cond_66
    const-string v2, "HMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 736
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthIdManagementView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 737
    :cond_67
    const-string v2, "HIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 738
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthInfrastructureTypeComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 739
    :cond_68
    const-string v2, "ARLC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 740
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAbhaRecordLinkView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 741
    :cond_69
    const-string v2, "VSC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 742
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getVisionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 743
    :cond_6a
    const-string v2, "ISC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 744
    invoke-static/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v0

    .line 745
    new-instance v2, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    invoke-direct {v2, v1, v7}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    if-eqz v0, :cond_7f

    .line 747
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setImmunisationSelectionComponent(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;)V

    .line 748
    invoke-virtual {v7, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 750
    :cond_6b
    const-string v2, "IDSC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 751
    new-instance v0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-direct {v0, v1, v7}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 752
    :cond_6c
    const-string v2, "CTBA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 753
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCheckBoxWithTextBoxAadhaar(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 754
    :cond_6d
    const-string v2, "ATS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 755
    invoke-static {v1, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getTestSelectorComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 756
    :cond_6e
    const-string v2, "VLFC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 757
    new-instance v0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-direct {v0, v1, v7}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 759
    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "###########################"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "########## not handled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 365
    :cond_70
    :goto_11
    invoke-static/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->relaxMandatoryIfUnder18(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 369
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_77

    .line 370
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 371
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_76

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_72

    goto :goto_13

    .line 374
    :cond_72
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "personName"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_73

    const/16 v9, 0x60

    :goto_12
    const/4 v3, 0x0

    goto :goto_14

    .line 377
    :cond_73
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_74

    const/4 v3, 0x0

    const/4 v9, 0x2

    goto :goto_14

    .line 380
    :cond_74
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AlphanumericWithCaps"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_75

    const/16 v9, 0x1000

    goto :goto_12

    .line 383
    :cond_75
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v10, "AlphanumericWithoutDecimal"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_71

    const/16 v9, 0x1001

    const/4 v3, 0x1

    goto :goto_14

    :cond_76
    :goto_13
    const/4 v3, 0x0

    const/16 v9, 0x2002

    goto :goto_14

    :cond_77
    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 391
    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    invoke-static {v1, v0, v5, v2, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    goto :goto_15

    .line 394
    :cond_78
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    invoke-static {v1, v0, v5, v2, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditTextWithSpecialCharacter(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    :cond_79
    :goto_15
    const/16 v0, 0x32

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v6, v2, v13, v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 399
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 400
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;

    invoke-direct {v2, v1, v7}, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_7a
    if-eqz v3, :cond_7b

    .line 403
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 415
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7d

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    if-lez v1, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_7c
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7d

    .line 422
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_7d
    invoke-virtual {v7, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 428
    invoke-static {v7, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto :goto_17

    .line 289
    :cond_7e
    :goto_16
    invoke-static {v1, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getSpinner(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/Spinner;

    move-result-object v0

    .line 290
    invoke-virtual {v7, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    :cond_7f
    :goto_17
    return-void
.end method

.method private static getAudio(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    .line 197
    invoke-static {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getAudioPlayer(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private static getImage(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 185
    invoke-static {p0, v1, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    .line 186
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x28

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDpsAccordingScreenHeight(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p1, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object v0

    .line 193
    :cond_0
    const-string p1, "No Media found"

    invoke-static {v0, v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method private static getMandatoryVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    .line 205
    invoke-static {p0, p1, v0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryVideoShow(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private static getVideo(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    .line 201
    invoke-static {p0, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getVideoShow(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generateQuestionTypeView$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 406
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p3

    if-nez p3, :cond_0

    .line 407
    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
