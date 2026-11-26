.class public Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;
.super Ljava/lang/Object;
.source "HealthInfrastructureListenerNPCB.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private context:Landroid/content/Context;

.field private formType:Ljava/lang/String;

.field private infraTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infrastructureBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private searchInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedInfraTypeId:Ljava/lang/Long;

.field private typeSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/Spinner;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infrastructureBeans:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 58
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    .line 59
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->typeSpinner:Landroid/widget/Spinner;

    .line 60
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infraTypeMap:Ljava/util/Map;

    .line 61
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->formType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infrastructureBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method private setSearchTypeView()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->searchInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    const-string v2, "Select Health Infrastructure"

    invoke-static {v1, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->searchInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 120
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    const-string v3, "Processing...."

    invoke-direct {v0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 121
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 122
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->selectedInfraTypeId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v4, v2, v3}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveHealthInfraBySearch(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infrastructureBeans:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infrastructureBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    const-string v1, "No Health Infrastructure available"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 127
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infrastructureBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 133
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    new-instance v2, Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 137
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$3;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$4;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$4;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const-string v2, "Search Health Infrastructure"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 191
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    .line 192
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 193
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    .line 196
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 197
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintEnabled(Z)V

    .line 207
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    const/16 v2, 0x32

    .line 208
    invoke-virtual {v4, v3, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->searchInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 68
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->context:Landroid/content/Context;

    const-string p4, "Select Health Infrastructure type"

    invoke-static {p2, p2, p3, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->linearLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "-Select-"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->typeSpinner:Landroid/widget/Spinner;

    .line 73
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 74
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->infraTypeMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 76
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->selectedInfraTypeId:Ljava/lang/Long;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Selected Health Infrastructure Type : "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " : : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string p5, "healthInfrastructureType"

    invoke-interface {p1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "healthInfrastructureTypeId"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 85
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 86
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object p4

    const-string p5, "-"

    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v0, "checkServiceDateForHealthInfra"

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    .line 87
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 88
    aget-object p4, p4, v1

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->selectedInfraTypeId:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->selectedInfraTypeId:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 101
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->setSearchTypeView()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
