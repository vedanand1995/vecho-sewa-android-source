.class public Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NcdRegisterAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final CBAC_SUMMARY_SCREEN:Ljava/lang/String; = "cbacSummaryScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final LIMIT:J = 0x1eL

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"


# instance fields
.field private ashaArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ashaAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private ashaAreaSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvilableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private titleView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->timer:Ljava/util/Timer;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMemberIndex:I

    return p1
.end method

.method private getMemberList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 333
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->showProcessDialog()V

    .line 113
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 114
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 115
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 203
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->screen:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 210
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 213
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 214
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 217
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 218
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBoxForMember()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 230
    const-string v0, "Search Member"

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 145
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)V

    .line 158
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close NCD Register?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "cbacSummaryScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "memberSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->addSearchTextBoxForMember()V

    .line 194
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_2

    .line 183
    :pswitch_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMemberIndex:I

    if-eq p1, v2, :cond_3

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 185
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setCBACSummaryScreen()V

    goto :goto_2

    .line 187
    :cond_3
    const-string p1, "Select a member of the family"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->showProcessDialog()V

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 173
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 179
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->addSearchTextBoxForMember()V

    .line 180
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x3611b471 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchString:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMembersForNcdRegisterAsha(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 632
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->offset:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->offset:J

    .line 633
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 626
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 638
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->getMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 641
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 597
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 599
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4

    .line 600
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "cbacSummaryScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "memberSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 612
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->showProcessDialog()V

    .line 613
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 614
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->addSearchTextBoxForMember()V

    .line 615
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 616
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 605
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 606
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 608
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_1

    .line 602
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->navigateToHomeScreen(Z)V

    :cond_4
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x3611b471 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setContentView(Landroid/view/View;)V

    .line 101
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->finish()V

    .line 108
    :cond_1
    const-string v0, "NCD Register"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 9

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaArea:Ljava/util/ArrayList;

    .line 284
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->searchString:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v7, 0x0

    .line 286
    iput-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->offset:J

    const/4 v0, -0x1

    .line 287
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMemberIndex:I

    .line 288
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaArea:Ljava/util/ArrayList;

    const-wide/16 v5, 0x1e

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMembersForNcdRegisterAsha(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 289
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->offset:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setMemberSelectionScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 126
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->addSearchTextBoxForMember()V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Data not synced properly. Please refresh."

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->hideProcessDialog()V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setCBACSummaryScreen()V
    .locals 7

    .line 340
    const-string v0, "cbacSummaryScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->screen:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 345
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMemberIndex:I

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_33

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Name"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;->retrieveMemberCbacDetailBean(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getSmokeOrConsumeGutka()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getSmokeOrConsumeGutka()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IN_PAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    const-string v3, "Used to smoke or consume gutka/khaini in past."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getSmokeOrConsumeGutka()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getSmokeOrConsumeGutka()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DAILY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    const-string v3, "Smoke or consume gutka/khaini daily."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getConsumeAlcoholDaily()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getConsumeAlcoholDaily()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    const-string v3, "Consume alcohol daily."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getPhysicalActivity150Min()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getPhysicalActivity150Min()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LESS_THAN_150"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    const-string v3, "Does\'nt undertake physical activities for minimum 150 minutes in a week."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBpDiabetesHeartHistory()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBpDiabetesHeartHistory()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    const-string v3, "Family History of High Blood Pressure, Diabetes and Heart Disease."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getScore()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, " - "

    if-eqz v3, :cond_5

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CBAC Score"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getScore()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 379
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "Risk Assessment"

    invoke-static {v2, v2, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 381
    invoke-static {p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 382
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addBullet(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 388
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 390
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getShortnessOfBreath()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getShortnessOfBreath()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 391
    const-string v3, "Shortness of breath"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_7
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getFitsHistory()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getFitsHistory()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 395
    const-string v3, "History of fits"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_8
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getTwoWeeksCoughing()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getTwoWeeksCoughing()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 399
    const-string v3, "Coughing more than 2 weeks"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_9
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getMouthOpeningDifficulty()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getMouthOpeningDifficulty()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 403
    const-string v3, "Difficulty in mouth opening"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBloodInSputum()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBloodInSputum()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 407
    const-string v3, "Blood in sputum"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getTwoWeeksFever()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getTwoWeeksFever()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 411
    const-string v3, "Fever for more than 2 weeks"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_c
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getChangeInToneOfVoice()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getChangeInToneOfVoice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 415
    const-string v3, "Change in the tone of voice"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_d
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getPatchOnSkin()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getPatchOnSkin()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 419
    const-string v3, "Patch or discoloration on skin"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_e
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getNightSweats()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getNightSweats()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 423
    const-string v3, "Night Sweats"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_f
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDifficultyHoldingObjects()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDifficultyHoldingObjects()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 427
    const-string v3, "Difficulty in holding objects with fingers"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_10
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getSensationLossPalm()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getSensationLossPalm()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 431
    const-string v3, "Loss of sensation for Cold/Hot objects in palm or sole"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_11
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getTakingAntiTbDrugs()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getTakingAntiTbDrugs()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 435
    const-string v3, "Currently taking anti-TB drugs"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_12
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getFamilyMemberSufferingFromTb()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getFamilyMemberSufferingFromTb()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 439
    const-string v3, "Someone in family currently suffering from TB"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_13
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getHistoryOfTb()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getShortnessOfBreath()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 443
    const-string v3, "History of TB"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_14
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getLumpInBreast()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getLumpInBreast()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 447
    const-string v3, "Lump in the breast"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_15
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleedingAfterMenopause()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleedingAfterMenopause()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 451
    const-string v3, "Bleeding after menopause"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_16
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getNippleBloodStainedDischarge()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getNippleBloodStainedDischarge()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 455
    const-string v3, "Blood stained discharge from the nipple"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_17
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleedingAfterIntercourse()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleedingAfterIntercourse()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 459
    const-string v3, "Bleeding after intercourse"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_18
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getChangeInSizeOfBreast()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getChangeInSizeOfBreast()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 463
    const-string v3, "Change in shape and size of breast"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_19
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getFoulVaginalDischarge()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getFoulVaginalDischarge()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 467
    const-string v3, "Foul smelling vaginal discharge"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_1a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleedingBetweenPeriods()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleedingBetweenPeriods()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 471
    const-string v3, "Bleeding between periods"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_1b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getOccupationalExposure()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getOccupationalExposure()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CROP_BURNING"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 475
    const-string v3, "Exposure from Crop residue burning / burning of garbage."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 476
    :cond_1c
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getOccupationalExposure()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getOccupationalExposure()Ljava/lang/String;

    move-result-object v3

    const-string v5, "INDUSTRY_WORK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 477
    const-string v3, "Leaves / Working in industries with smoke, gas and dust exposure such as brick kilns and glass factories etc."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1d
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 481
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "Early Detection"

    invoke-static {v2, v2, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 484
    invoke-static {p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 485
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addBullet(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 491
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 493
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    const-string v5, "F"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 494
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 495
    const-string v3, "Menopause arrived."

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_1f
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDurationOfMenoapuse()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration of menopause"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDurationOfMenoapuse()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " years"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_20
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getPregnant()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getPregnant()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 503
    const-string v3, "Pregnant"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_21
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getLactating()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getLactating()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 507
    const-string v3, "Lactating"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_22
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getRegularPeriods()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getRegularPeriods()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_23

    .line 511
    const-string v3, "Irregular Periods"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_23
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleeding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getBleeding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAVY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 515
    const-string v3, "Heavy bleeding"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_24
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getAssociatedWith()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getAssociatedWith()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 519
    const-string v3, "Associated with pain"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 523
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Menstrual History"

    invoke-static {v2, v2, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 526
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    .line 527
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addBullet(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 534
    :cond_26
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 536
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForHypertension()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForHypertension()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 537
    const-string v2, "Diagnosed for Hypertension"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_27
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForDiabetes()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForDiabetes()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 541
    const-string v2, "Diagnosed for Diabetes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_28
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForHeartDiseases()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForHeartDiseases()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 545
    const-string v2, "Diagnosed for Heart Diseases"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_29
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForStroke()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForStroke()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 549
    const-string v2, "Diagnosed for Stroke"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_2a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForKidneyFailure()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForKidneyFailure()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 553
    const-string v2, "Diagnosed for Kidney Failure"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_2b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForNonHealingWound()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForNonHealingWound()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 557
    const-string v2, "Diagnosed for Non-Healing Wound"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_2c
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForCOPD()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForCOPD()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 561
    const-string v2, "Diagnosed for COPD"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_2d
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForAsthama()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForAsthama()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 565
    const-string v2, "Diagnosed for Asthama"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_2e
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForOralCancer()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForOralCancer()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 569
    const-string v2, "Diagnosed for Oral Cancer"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_2f
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForBreastCancer()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForBreastCancer()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 573
    const-string v2, "Diagnosed for Breast Cancer"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_30
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForCervicalCancer()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getDiagnosedForCervicalCancer()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 577
    const-string v0, "Diagnosed for Cervical Cancer"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 581
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Personal History"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 584
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 585
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addBullet(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 590
    :cond_32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "The CBAC details for this member cannot be found. Please Refresh and try again."

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_33
    return-void
.end method

.method public setMemberSelectionScreen(Z)V
    .locals 3

    .line 295
    const-string p1, "memberSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->screen:Ljava/lang/String;

    const/4 p1, 0x0

    .line 296
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 298
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 299
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->noMemberAvilableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 301
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 302
    const-string p1, "Select Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->getMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 306
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)V

    .line 312
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 317
    :cond_0
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->noMemberAvilableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->hideProcessDialog()V

    return-void
.end method
