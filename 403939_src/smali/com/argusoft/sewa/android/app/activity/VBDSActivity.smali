.class public Lcom/argusoft/sewa/android/app/activity/VBDSActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "VBDSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final REQUEST_CODE_FOR_VBDS_ACTIVITY:I = 0x309

.field public static final TPT_MEMBER_SCREEN:Ljava/lang/String; = "tptMemberScreen"

.field public static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private limit:Ljava/lang/Integer;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:Ljava/lang/Integer;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedPeopleIndex:I

.field private selectedType:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberList:Ljava/util/List;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedPeopleIndex:I

    const/16 v0, 0x1e

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->limit:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    .line 80
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)Ljava/util/Timer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private getCameForInterDomestic(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;)Ljava/lang/String;
    .locals 1

    .line 294
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 300
    const-string p1, "0"

    return-object p1

    .line 298
    :cond_0
    const-string p1, "2"

    return-object p1

    .line 296
    :cond_1
    const-string p1, "1"

    return-object p1
.end method

.method private getMembersList(Ljava/util/List;)Ljava/util/List;
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

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 258
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

.method private getSelectedLocationId()Ljava/lang/Integer;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocation()Lcom/argusoft/sewa/android/app/model/LocationBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getParent()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    .line 91
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 92
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 93
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->nextButton:Landroid/widget/Button;

    .line 97
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setBodyDetail()V

    return-void
.end method

.method private onTypeSelected(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->getActivityClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->getActivityClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 170
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    const-string v1, "selectedLocationIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 p1, 0x309

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->getFormType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    const-string p1, "This activity is not available yet"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    .line 180
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedType:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSubTitle(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->isMemberBased()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->addSearchTextBox()V

    .line 186
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->retrieveMemberListForTPTByArea(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->startDynamicFormActivity(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    :goto_0
    return-void
.end method

.method private startDynamicFormActivity(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->getSelectedLocationId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForVBDSForms(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "cameForInterDomestic"

    .line 281
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->getCameForInterDomestic(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const-string v0, "entity"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->getFormType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x309

    .line 285
    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->hideProcessDialog()V

    return-void

    .line 267
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)V

    .line 274
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 275
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 276
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addMemberListScreenForUpdateInfo()V
    .locals 4

    .line 232
    const-string v0, "tptMemberScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->screen:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 236
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedPeopleIndex:I

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "Select TB Positive Member"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 240
    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)V

    .line 245
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 246
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 249
    const-string v0, "No members found."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 250
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 308
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$addMemberListScreenForUpdateInfo$1$com-argusoft-sewa-android-app-activity-VBDSActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 243
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$setSelectionType$0$com-argusoft-sewa-android-app-activity-VBDSActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 157
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->values()[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->onTypeSelected(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;)V

    return-void
.end method

.method public loadMoreMembers()V
    .locals 8

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->getSelectedLocationId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    .line 424
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x309

    if-ne p1, p2, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    .line 385
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 386
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSelectionType()V

    .line 387
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->navigateToHomeScreen(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->hideProcessDialog()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 396
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)V

    .line 409
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close VBDS?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 412
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_4

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "tptMemberScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    const-string p1, "Please select location"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSubTitle(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSelectionType()V

    goto :goto_0

    .line 207
    :cond_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedPeopleIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    .line 209
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberList:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 210
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSubTitle(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedType:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->startDynamicFormActivity(Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    .line 213
    :cond_3
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 417
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->loadMoreMembers()V

    return-void
.end method

.method public onLoadMoreUiMember(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 483
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 353
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 360
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 361
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "typeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "tptMemberScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 363
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 366
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    .line 367
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setBodyDetail()V

    goto :goto_1

    .line 370
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->showProcessDialog()V

    .line 371
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSelectionType()V

    :goto_1
    return v1

    :cond_4
    return v2

    .line 356
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x726402c2 -> :sswitch_2
        -0x4754ad82 -> :sswitch_1
        -0x13a69534 -> :sswitch_0
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

    .line 102
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setContentView(Landroid/view/View;)V

    .line 106
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->finish()V

    .line 113
    :cond_1
    const-string v0, "Surveillance"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMemberListForTPTByArea(Ljava/lang/CharSequence;)V
    .locals 9

    .line 222
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->searchString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 223
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->selectedPeopleIndex:I

    const/4 v0, 0x0

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    .line 225
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->getSelectedLocationId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->memberList:Ljava/util/List;

    .line 226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->offset:Ljava/lang/Integer;

    .line 227
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->addMemberListScreenForUpdateInfo()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 118
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->setSubTitle(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;Z)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->hideProcessDialog()V

    return-void
.end method

.method public setSelectionType()V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->screen:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->context:Landroid/content/Context;

    const-string v1, "Please Select an option"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->values()[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 153
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/VBDSActivity;)V

    .line 158
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity;->hideProcessDialog()V

    return-void
.end method
