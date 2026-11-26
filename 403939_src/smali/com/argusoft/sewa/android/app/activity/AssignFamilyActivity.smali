.class public Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AssignFamilyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private checkedRadioButtonId:I

.field private errorString:Ljava/lang/String;

.field private familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private familyDetailsLayout:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isFamilyAssignedScreen:Z

.field private isFamilySelectionScreen:Z

.field private isVillageSelectionScreen:Z

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationId:Ljava/lang/String;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private response:Ljava/lang/String;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationBeans:Ljava/util/List;

    .line 71
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isVillageSelectionScreen:Z

    .line 72
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilyAssignedScreen:Z

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    return p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilyAssignedScreen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->response:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/Button;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->dismissKeyboard()V

    return-void
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->checkedRadioButtonId:I

    return p0
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->checkedRadioButtonId:I

    return p1
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDetailsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private addVillageSelectionSpinner()V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 353
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 356
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->spinner:Landroid/widget/Spinner;

    .line 357
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private dismissKeyboard()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 90
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 91
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 92
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->nextButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->footerView:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->showNotOnlineMessage()V

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
.method public addSearchScreen()V
    .locals 11

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    const-string v0, "Family ID"

    const/16 v1, 0x66

    const/16 v2, 0x16

    const/16 v3, 0x1001

    invoke-static {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 200
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const/16 v1, 0x67

    const/4 v2, -0x1

    .line 204
    const-string v4, "Member Id"

    invoke-static {p0, v4, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    :cond_1
    const-string v2, "Search"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "Search for a Family"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v4, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 224
    const-string v4, "Search with Family Id"

    const/16 v5, 0xa

    invoke-static {p0, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    const/4 v5, 0x1

    .line 225
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    const-string v5, "Search with Member Id"

    const/16 v6, 0xb

    invoke-static {p0, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v5

    .line 227
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 228
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 229
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->checkedRadioButtonId:I

    .line 233
    new-instance v10, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;

    move-object v4, v10

    move-object v5, p0

    move-object v6, v3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Landroid/widget/RadioGroup;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v10}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 253
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public assignFamilyToUserFromNetwork()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->showProcessDialog()V

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->assignFamilyToUser(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->response:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFamilyDataBeanFromServer(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getFamilyToBeAssignedBySearchString(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 292
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->errorString:Ljava/lang/String;

    .line 294
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->showFamilyDetails()V

    goto :goto_1

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->dismissKeyboard()V

    .line 299
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$6;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->dismissKeyboard()V

    .line 310
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$7;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 384
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    .line 397
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Assign Family?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 400
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->showNotOnlineMessage()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_6

    .line 137
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isVillageSelectionScreen:Z

    if-eqz p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 140
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationId:Ljava/lang/String;

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->assignFamilyToUserFromNetwork()V

    .line 147
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isVillageSelectionScreen:Z

    goto :goto_0

    .line 148
    :cond_3
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    if-eqz p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-nez p1, :cond_4

    .line 150
    const-string p1, "Please search for a family"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    .line 154
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isVillageSelectionScreen:Z

    .line 155
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->navigateToHomeScreen(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 86
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 405
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 407
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 409
    :cond_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilyAssignedScreen:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 410
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 411
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 412
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->addSearchScreen()V

    .line 415
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    .line 416
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilyAssignedScreen:Z

    goto :goto_0

    .line 417
    :cond_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isVillageSelectionScreen:Z

    if-eqz p1, :cond_2

    .line 418
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 419
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 420
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->addSearchScreen()V

    .line 421
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    .line 422
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isVillageSelectionScreen:Z

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->navigateToHomeScreen(Z)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->setContentView(Landroid/view/View;)V

    .line 112
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->finish()V

    .line 119
    :cond_1
    const-string v0, "Assign Family"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->locationBeans:Ljava/util/List;

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->addSearchScreen()V

    .line 126
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->isFamilySelectionScreen:Z

    return-void
.end method

.method public showFamilyDetails()V
    .locals 3

    .line 322
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->dismissKeyboard()V

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDetailsLayout:Landroid/widget/LinearLayout;

    .line 326
    const-string v1, "Family ID"

    .line 327
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 326
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDetailsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDetailsLayout:Landroid/widget/LinearLayout;

    const-string v1, "Members Info"

    .line 330
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDetailsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->familyDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->errorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 4

    .line 362
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    .line 369
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 370
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x69

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 372
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
