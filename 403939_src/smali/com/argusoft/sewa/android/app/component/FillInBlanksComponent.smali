.class public Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;
.super Landroid/widget/LinearLayout;
.source "FillInBlanksComponent.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final editTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->editTextList:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->text:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->init()V

    return-void
.end method

.method private init()V
    .locals 13

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->text:Ljava/lang/String;

    const-string v1, "RRRRR_____RRRRR"

    const-string v2, "_____"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RRRRR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    invoke-static {v1, v4, v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    sget v7, Lcom/argusoft/sewa/android/app/R$color;->lms_answer_layout:I

    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0x14

    .line 36
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    invoke-static {v8, v4, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 41
    array-length v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v0, v9

    .line 42
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 43
    new-instance v10, Landroid/widget/EditText;

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v11, "Enter your answer here"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xa

    .line 46
    invoke-virtual {v11, v8, v12, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->lms_edit_text_background:I

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v11, 0x64

    const/16 v12, 0x1e

    .line 49
    invoke-virtual {v10, v12, v12, v11, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 50
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->editTextList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 53
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v10

    .line 54
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->lms_blanks_text:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 55
    invoke-virtual {v10, v8, v3, v8, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 56
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAnswers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->editTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 68
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEditTextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->editTextList:Ljava/util/List;

    return-object v0
.end method
