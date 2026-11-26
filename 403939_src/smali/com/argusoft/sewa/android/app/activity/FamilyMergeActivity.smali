.class public Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FamilyMergeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_INFO_SCREEN:Ljava/lang/String; = "familyInfoScreen"

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final IS_MERGED:Ljava/lang/String; = "isMerged"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private familyToExpand:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private familyToMerge:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private limit:J

.field private listTitle:Lcom/google/android/material/textview/MaterialTextView;

.field private locationId:Ljava/lang/String;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screenName:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedFamilyIndex:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->timer:Ljava/util/Timer;

    const-wide/16 v0, 0x1e

    .line 73
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->limit:J

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->selectedFamilyIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToMerge:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToExpand:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)Ljava/util/Timer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->selectedFamilyIndex:I

    return p1
.end method

.method private addFamilyInfoScreen()V
    .locals 2

    .line 331
    const-string v0, "familyInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->screenName:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToExpand:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const-string v1, "Family details"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToMerge:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const-string v1, "Details of family to be merged"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Ljava/lang/String;)V

    return-void
.end method

.method private addSearchTextBox()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    const-string v2, "Please search and select a family to merge"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 208
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Ljava/lang/String;)V
    .locals 9

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 348
    :goto_0
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 349
    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 350
    const-string v1, "Family details"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Members Info"

    const-string v4, "Family ID"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 351
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v6, -0x1

    invoke-static {p2, v6, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 352
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p1, 0x28

    .line 357
    invoke-virtual {p2, p1, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 360
    :cond_1
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 361
    new-instance v1, Landroid/text/style/ImageSpan;

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_merge_arrow:I

    invoke-direct {v1, p0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 362
    new-instance v6, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p2, -0xa

    .line 363
    invoke-virtual {v0, p2, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 364
    invoke-virtual {v6, v1, v2, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 365
    invoke-virtual {v0, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Merge"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 306
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 311
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    const-string v4, " null"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 318
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 321
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->CFHC_VERIFIED_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 324
    :cond_2
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 115
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 116
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->nextButton:Landroid/widget/Button;

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 7

    .line 130
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)V

    .line 145
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Merge Family?"

    const/16 v5, -0x97

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_4

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setSubTitle(Ljava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->selectedFamilyIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToMerge:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 159
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToExpand:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    const-string p1, "You have selected the same family. Please select some other family."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->addFamilyInfoScreen()V

    goto :goto_0

    .line 165
    :cond_2
    const-string p1, "Select a family to merge"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)V

    .line 195
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure you want to merge these two families? (This cannot be reversed)"

    const/16 v5, -0x97

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    const-string v0, "familyToExpand"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyToExpand:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 89
    const-string v0, "locationId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->locationId:Ljava/lang/String;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->locationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->searchString:Ljava/lang/String;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForMergeFamily(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 412
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->offset:J

    .line 413
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 406
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 418
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 421
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 377
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 384
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 387
    const-string v0, "isMerged"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v2, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setResult(ILandroid/content/Intent;)V

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->finish()V

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->showProcessDialog()V

    .line 394
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 395
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->addSearchTextBox()V

    .line 396
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setFamilySelectionScreen(Z)V

    :cond_3
    :goto_0
    return v1

    .line 379
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 3

    .line 97
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setContentView(Landroid/view/View;)V

    .line 101
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->finish()V

    .line 108
    :cond_1
    const-string v0, "Merge Family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyList(Ljava/lang/String;)V
    .locals 7

    .line 262
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->searchString:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 263
    iput-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->offset:J

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->locationId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->limit:J

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForMergeFamily(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyDataBeans:Ljava/util/List;

    .line 265
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->offset:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 266
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->showProcessDialog()V

    .line 124
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->retrieveFamilyList(Ljava/lang/String;)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 271
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->screenName:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->listTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    const-string v1, "Select Family"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->listTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 278
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;)V

    .line 288
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 289
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_0
    const-string v0, "No families found."

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 293
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity;->hideProcessDialog()V

    :cond_1
    return-void
.end method
