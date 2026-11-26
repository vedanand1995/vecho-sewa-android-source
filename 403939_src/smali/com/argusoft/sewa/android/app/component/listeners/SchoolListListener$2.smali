.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSchoolSelectionLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHasUnselectedText(Z)V

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "No School is available at selected location. Please select another location"

    .line 373
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    :cond_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Select School"

    .line 383
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-static {v2, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$102(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;

    .line 386
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 388
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1102(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/argusoft/sewa/android/app/model/SchoolBean;)Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 391
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHasUnselectedText(Z)V

    .line 396
    new-instance v3, Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 397
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 398
    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 399
    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;)V

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 423
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;)V

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$3;

    invoke-direct {v0, p0, v3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$3;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$4;

    invoke-direct {v0, p0, v3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$4;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 455
    const-string v0, "Enter School Name"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 458
    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 459
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x14

    .line 460
    invoke-virtual {v0, v1, v5, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 461
    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    new-instance v5, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$302(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/TextInputLayout;

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 469
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintEnabled(Z)V

    .line 470
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    const/16 v4, 0x32

    .line 471
    invoke-virtual {v0, v1, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 472
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    :cond_4
    return-void
.end method
