.class public Lcom/argusoft/sewa/android/app/component/SearchComponent;
.super Landroid/widget/LinearLayout;
.source "SearchComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;,
        Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;,
        Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;,
        Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;,
        Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;
    }
.end annotation


# instance fields
.field buttonListLayout:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field private dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

.field private editText:Landroid/widget/EditText;

.field private final hint:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private locationComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;

.field private final locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private final locationSelection:Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;

.field private onDateSetListener:Landroid/view/View$OnClickListener;

.field parentLayout:Landroid/widget/LinearLayout;

.field private searchBox:Landroid/widget/LinearLayout;

.field private searchButton:Landroid/widget/ImageButton;

.field private final searchClick:Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

.field private final searchTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLocationId:Ljava/lang/Long;

.field private selectedType:Ljava/lang/String;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;",
            "Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;",
            "Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->label:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    .line 79
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchClick:Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    .line 80
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->locationSelection:Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;

    .line 81
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->hint:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 83
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/SearchComponent;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->onDateSetListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private getHintInEditTextAccordingToType()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "MEMBER_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "Enter member id"

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "FAMILY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "Enter family id"

    return-object v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "MOBILE_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const-string v0, "Enter mobile number"

    return-object v0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    const-string v0, "Enter member name"

    return-object v0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "ABHA_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const-string v0, "Enter ABHA number"

    return-object v0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "ABHA_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    const-string v0, "Enter ABHA address"

    return-object v0

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "DOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    const-string v0, "Select date of birth"

    return-object v0

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "LMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    const-string v0, "Select last menstruation period date"

    return-object v0

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "EDD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    const-string v0, "Select estimated delivery date"

    return-object v0

    .line 256
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "DELIVERY_DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 257
    const-string v0, "Select delivery date"

    return-object v0

    .line 258
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "LOCATION_USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 260
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "UWIN_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 261
    const-string v0, "Enter uwin id"

    return-object v0

    .line 262
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const-string v1, "AADHAAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 263
    const-string v0, "Enter Aadhaar number"

    return-object v0

    .line 265
    :cond_c
    const-string v0, "Enter your text here"

    return-object v0

    .line 259
    :cond_d
    :goto_0
    const-string v0, "Select location"

    return-object v0
.end method

.method private getSearchButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 270
    new-instance v0, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;)V

    return-object v0
.end method

.method private getSearchTypeClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 131
    new-instance v0, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;)V

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 87
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->removeAllViews()V

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->label:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 91
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    invoke-static {v2, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->search_component_layout:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addView(Landroid/view/View;)V

    .line 99
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->abha_qr_button:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 100
    new-instance v2, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->searchType:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    const-string v2, "CLICK HERE to choose search type"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSearchTypeClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->searchBox:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    .line 112
    new-instance v2, Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    .line 113
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_bottom:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    new-instance v2, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    const-string v4, "Select date here"

    invoke-direct {v2, p0, v3, v4}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    .line 116
    new-instance v2, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    const-string v4, "Select location"

    invoke-direct {v2, p0, v3, v4}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->locationComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;

    .line 118
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->searchButton:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchButton:Landroid/widget/ImageButton;

    .line 119
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSearchButtonOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->setSearchBoxAccordingToType()V

    return-void
.end method

.method private setKeyBoardValidationsAccordingToType()V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 191
    const-string v0, "MOBILE_NUMBER"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    const/16 v3, 0xa

    .line 194
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v3

    .line 195
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getOnlyNumberInputFilter()Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 193
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 197
    :cond_0
    const-string v0, "ABHA_NUMBER"

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v5, 0xe

    if-nez v0, :cond_6

    const-string v0, "ABHA_ADDRESS"

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 204
    :cond_1
    const-string v0, "NAME"

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    .line 207
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getAlphanumericWithSpaceInputFilter()Landroid/text/InputFilter;

    move-result-object v3

    const/16 v5, 0x32

    .line 208
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 206
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 210
    :cond_2
    const-string v0, "FAMILY_ID"

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v6, 0x14

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    .line 213
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v3

    .line 214
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getFamilyIdInputFilter()Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 212
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 216
    :cond_3
    const-string v0, "MEMBER_ID"

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    .line 219
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v3

    .line 220
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getMemberIdInputFilter()Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 218
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 222
    :cond_4
    const-string v0, "UWIN_ID"

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    .line 225
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v3

    .line 226
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getOnlyNumberInputFilter()Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 224
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 228
    :cond_5
    const-string v0, "AADHAAR"

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    const/16 v3, 0xc

    .line 231
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v3

    .line 232
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getOnlyNumberInputFilter()Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 230
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 199
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    .line 201
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getLengthInputFilter(I)Landroid/text/InputFilter;

    move-result-object v3

    .line 202
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->getOnlyNumberInputFilter()Landroid/text/InputFilter;

    move-result-object v5

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    .line 200
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private setSearchBoxAccordingToType()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;->getSearchTypeText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getHintInEditTextAccordingToType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 163
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->setKeyBoardValidationsAccordingToType()V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_3

    .line 165
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;->getSearchTypeDate()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getHintInEditTextAccordingToType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->hint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 180
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    const-string v1, "Enter your text here"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnDateSetListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->onDateSetListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public addTextWatcherInEditText(Landroid/text/TextWatcher;)V
    .locals 1

    .line 315
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->textWatcher:Landroid/text/TextWatcher;

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public getSelectedDate()Ljava/util/Date;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelectedSearchType()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    return-object v0
.end method

.method public hideSearchIcon()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$getSearchButtonOnClickListener$3$com-argusoft-sewa-android-app-component-SearchComponent(Landroid/view/View;)V
    .locals 4

    .line 271
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Nothing to do here."

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;->getSearchTypeText()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;->getSearchTypeDate()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    const-string v0, "Please select a date to search"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchClick:Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    if-eqz p1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->dateComponent:Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;->onSearchClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_1

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 305
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    const-string v0, "Please click the button to search"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    const-string v0, "Please enter text to search"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 275
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchClick:Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    if-eqz p1, :cond_8

    .line 276
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;->getRequiredLengthForSearchType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 279
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Please enter all "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " digits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_6
    const-string v1, "ABHA_NUMBER"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_7

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    const-string v2, "-"

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xc

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchClick:Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;->onSearchClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 289
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$getSearchTypeClickListener$1$com-argusoft-sewa-android-app-component-SearchComponent(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->setSearchBoxAccordingToType()V

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$getSearchTypeClickListener$2$com-argusoft-sewa-android-app-component-SearchComponent(Landroid/view/View;)V
    .locals 6

    .line 132
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    const-string v0, "Choose a type of search"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->searchTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchTypes;->getFullNameForSearchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 140
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->selectedType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;)V

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    const-string v0, "Sorry nothing to do here"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$initView$0$com-argusoft-sewa-android-app-component-SearchComponent(Landroid/view/View;)V
    .locals 1

    .line 101
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 102
    const-class v0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 103
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method
