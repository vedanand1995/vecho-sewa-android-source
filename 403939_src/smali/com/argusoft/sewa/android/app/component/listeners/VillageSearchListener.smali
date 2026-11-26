.class public Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;
.super Ljava/lang/Object;
.source "VillageSearchListener.java"


# static fields
.field private static final SEARCH_DEBOUNCE_MS:J = 0x1f4L

.field private static final VILLAGE_LEVEL:I = 0x6


# instance fields
.field private final context:Landroid/content/Context;

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private noResultTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private resultListView:Landroid/widget/ListView;

.field private searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->searchResults:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->timer:Ljava/util/Timer;

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 55
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)Ljava/util/Timer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->performSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->clearResults()V

    return-void
.end method

.method private clearResults()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->searchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->resultListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->noResultTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private performSearch(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 98
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansBySearch(Ljava/lang/CharSequence;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->searchResults:Ljava/util/List;

    .line 99
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->showResults()V

    return-void
.end method

.method private showResults()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->resultListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->noResultTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->searchResults:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->searchResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 124
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 125
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-interface {v4, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_1
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->resultListView:Landroid/widget/ListView;

    .line 142
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 115
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    const-string v1, "No Villages/Anganwadi-Area found with this name!"

    .line 116
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->noResultTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 117
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showSelected(Ljava/lang/String;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 151
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 152
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x1e

    .line 155
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->selectedTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    const-string v1, "Village/Anganwadi-Area"

    .line 60
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x32

    .line 59
    invoke-static {v0, v1, v2, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$showResults$0$com-argusoft-sewa-android-app-component-listeners-VillageSearchListener(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->searchResults:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 132
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 134
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->context:Landroid/content/Context;

    const-string p5, "input_method"

    invoke-virtual {p2, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 139
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->showSelected(Ljava/lang/String;)V

    return-void
.end method
