.class public Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MemberGeriatricListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MemberGeriatricList"


# instance fields
.field private areaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field geriatricList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private globalPanel:Landroid/widget/LinearLayout;

.field private nextButton:Landroid/widget/Button;

.field private paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private searchBox:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private textView:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;)Ljava/util/Timer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMemberIndex:I

    return p1
.end method

.method private getList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 227
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const/4 v3, 0x5

    aget-object v3, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->showProcessDialog()V

    .line 111
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->setContentView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 114
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->nextButton:Landroid/widget/Button;

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->setBodyDetail()V

    return-void
.end method

.method private setBodyDetail()V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->fetchGeriatricListFromDB(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;)V
    .locals 8

    .line 239
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->showProcessDialog()V

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 242
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    .line 243
    const-string v1, "entity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3ee

    .line 244
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 147
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public fetchGeriatricListFromDB(Ljava/lang/CharSequence;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->areaIds:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveGeriatricMembers(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->geriatricList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->setGeriatricListViews(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3ee

    if-ne p1, p2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->showProcessDialog()V

    const/4 p1, -0x1

    .line 253
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMemberIndex:I

    .line 254
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 255
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->addSearchTextBox()V

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->fetchGeriatricListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 258
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 129
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->geriatricList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->finish()V

    return-void

    .line 133
    :cond_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMemberIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->geriatricList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p1

    .line 136
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 137
    const-string p1, "GMA"

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->startDynamicFormActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    const-string p1, "Please Select a Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locationId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;)V

    .line 84
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 82
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->areaIds:Ljava/util/List;

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    const-string p1, "MemberGeriatricList"

    const-string v0, "Location ID is not valid. Finishing activity."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->finish()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 264
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->setContentView(Landroid/view/View;)V

    .line 99
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->finish()V

    .line 106
    :cond_1
    const-string v0, "Geriatric Members"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setGeriatricListViews(Z)V
    .locals 4

    .line 199
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->geriatricList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 203
    const-string p1, "Select a member from list"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->geriatricList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->getList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 207
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;)V

    .line 213
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_0
    const-string p1, "No member found in your area"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Main Menu"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MemberGeriatricListActivity;->hideProcessDialog()V

    return-void
.end method
