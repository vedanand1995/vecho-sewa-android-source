.class public Lcom/argusoft/sewa/android/app/activity/LabTestActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LabTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final MEMBER_LIST_SCREEN:Ljava/lang/String; = "memberListScreen"

.field private static final REQUEST_CODE_FOR_LAB_TEST_ACTIVITY:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "LabTestActivity"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private final limit:J

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

.field private memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedMemberIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->REQUEST_CODE_FOR_LAB_TEST_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->members:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMemberIds:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    const-wide/16 v0, 0x1e

    .line 81
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->limit:J

    .line 85
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->searchString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)Ljava/util/Timer;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private addMemberToSelection(Ljava/lang/String;)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 402
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addMembersToTheList(Ljava/util/List;)Ljava/util/List;
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

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 308
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 310
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 311
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createScrollableDialogLayout(Landroid/app/Dialog;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 440
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 441
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x1e

    .line 442
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, -0x1

    .line 443
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 445
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    const-string v6, "Selected Members: "

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 447
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v7, -0x1000000

    .line 448
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x0

    .line 449
    invoke-virtual {v5, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v9, 0x0

    const/16 v10, 0xf

    .line 450
    invoke-virtual {v5, v9, v9, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 451
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 456
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, -0x2

    const/16 v15, 0xa

    if-gt v11, v12, :cond_0

    .line 457
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x5

    .line 461
    invoke-virtual {v5, v15, v12, v15, v12}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_0

    .line 463
    :cond_0
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 468
    invoke-virtual {v5, v15, v15, v15, v15}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 471
    :goto_0
    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    const-string v11, "#f5f5f5"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 474
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 475
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 476
    invoke-virtual {v11, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v10, 0x0

    .line 478
    :goto_1
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_2

    .line 479
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 481
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 482
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0xc

    .line 483
    invoke-virtual {v13, v15, v7, v15, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 484
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 486
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v10, :cond_1

    const/16 v4, 0x8

    .line 491
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 493
    :cond_1
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 498
    const-string v7, "#333333"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 499
    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 500
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 503
    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41500000    # 13.0f

    .line 504
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 505
    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x4

    .line 506
    invoke-virtual {v4, v9, v7, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 507
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, -0x1

    const/high16 v7, -0x1000000

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, -0x2

    goto/16 :goto_1

    .line 512
    :cond_2
    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 513
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 516
    const-string v5, "Select Date of Submission: "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v5, -0x1000000

    .line 518
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v3, 0x14

    .line 520
    invoke-virtual {v4, v9, v3, v9, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 521
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    new-instance v4, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 524
    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCustomDatePicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 525
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 528
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 529
    invoke-virtual {v5, v9, v3, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 530
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 534
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 537
    const-string v8, "Cancel"

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 539
    const-string v7, "#757575"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 540
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 545
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 546
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 550
    const-string v7, "Submit"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, -0x1

    .line 551
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 552
    const-string v7, "#2196F3"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 553
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 558
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 559
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v4, v1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private initView()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->showProcessDialog()V

    .line 117
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 118
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 119
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    .line 123
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic lambda$createScrollableDialogLayout$3(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 547
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private removeMemberFromSelection(Ljava/lang/String;)V
    .locals 3

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 588
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private setBodyDetail()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setVillageSelectionScreen()V

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->hideProcessDialog()V

    return-void
.end method

.method private setVillageSelectionScreen()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 167
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->screen:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showSelectedMembersDialog()V
    .locals 7

    .line 410
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 413
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->createScrollableDialogLayout(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 416
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 419
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    const/4 v1, -0x2

    goto :goto_1

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    :goto_0
    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 427
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 429
    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x1080011

    .line 433
    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 436
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$createScrollableDialogLayout$4$com-argusoft-sewa-android-app-activity-LabTestActivity(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 561
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 562
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 563
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 564
    new-instance p3, Lcom/google/gson/JsonArray;

    invoke-direct {p3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 565
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 566
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_0
    const-string v0, "memberIds"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 570
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 571
    const-string p3, "submissionDate"

    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->storeReferredLabTestEntries(Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_1
    const-string p1, "Please select a date"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$0$com-argusoft-sewa-android-app-activity-LabTestActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-LabTestActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 244
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    .line 246
    instance-of p3, p2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    if-nez p3, :cond_0

    return-void

    .line 250
    :cond_0
    check-cast p2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 251
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object p2

    .line 253
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMemberIds:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 254
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMemberIds:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->removeMemberFromSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMemberIds:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->addMemberToSelection(Ljava/lang/String;)V

    .line 261
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .line 262
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_2

    .line 263
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 265
    :cond_2
    instance-of p2, p1, Landroid/widget/BaseAdapter;

    if-eqz p2, :cond_3

    .line 266
    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$2$com-argusoft-sewa-android-app-activity-LabTestActivity(Landroid/view/View;)V
    .locals 0

    .line 295
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->showSelectedMembersDialog()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showCustomDialog$6$com-argusoft-sewa-android-app-activity-LabTestActivity(Landroid/view/View;)V
    .locals 1

    .line 641
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 642
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->doUpdate(Ljava/lang/Boolean;)V

    .line 643
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$showRetryDialog$5$com-argusoft-sewa-android-app-activity-LabTestActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 621
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 622
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->storeReferredLabTestEntries(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 624
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 346
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->REQUEST_CODE_FOR_LAB_TEST_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->showProcessDialog()V

    .line 348
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->searchTextBox()V

    const/4 p1, 0x0

    .line 349
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->retrieveMembers(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 352
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 324
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V

    .line 337
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close NPCB Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 340
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberListScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 140
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 142
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->searchTextBox()V

    .line 143
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->retrieveMembers(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setSubTitle(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->showProcessDialog()V

    goto :goto_0

    .line 147
    :cond_1
    const-string p1, "Please select location"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setSubTitle(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 9

    .line 395
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->searchString:Ljava/lang/String;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v3, 0x1e

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMalariaScreenedMembers(Ljava/util/List;Ljava/lang/String;JJZZ)Ljava/util/List;

    move-result-object v0

    .line 396
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    .line 397
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->onLoadMoreBackground()V

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

    .line 595
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 597
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->addMembersToTheList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 358
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 366
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberListScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMemberIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 373
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 374
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setVillageSelectionScreen()V

    .line 375
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return v1

    :cond_3
    return v2

    .line 361
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setContentView(Landroid/view/View;)V

    .line 105
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->finish()V

    .line 112
    :cond_1
    const-string v0, "Lab Test"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMembers(Ljava/lang/String;)V
    .locals 11

    const-wide/16 v0, 0x0

    .line 175
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    .line 176
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->searchString:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v3

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v5, 0x1e

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMalariaScreenedMembers(Ljava/util/List;Ljava/lang/String;JJZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->members:Ljava/util/List;

    .line 178
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->offset:J

    .line 179
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method public searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 183
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 5

    .line 223
    const-string v0, "memberListScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->screen:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->members:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->addMembersToTheList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 231
    const-string v0, "No members found."

    .line 233
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 235
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->context:Landroid/content/Context;

    const-string v3, "Select from list"

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 241
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V

    .line 270
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v3, v0, v4, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMultiSelectPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 278
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 280
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 281
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 282
    instance-of v4, v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    if-eqz v4, :cond_1

    .line 283
    check-cast v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 284
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->selectedMemberIds:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setItemChecked(IZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->hideProcessDialog()V

    return-void
.end method

.method public showCustomDialog()V
    .locals 7

    .line 640
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;)V

    .line 646
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->context:Landroid/content/Context;

    const-string v3, "Members Referred to Lab Technician"

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 653
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public showRetryDialog(Ljava/lang/String;)V
    .locals 6

    .line 620
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestActivity;Ljava/lang/String;)V

    .line 628
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->context:Landroid/content/Context;

    const-string v3, "Some error occurred while submitting the form. Please press \'Retry\' to submit the form again or \'Cancel\' to try after sometime."

    const/16 v5, -0x99

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 635
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public storeReferredLabTestEntries(Ljava/lang/String;)V
    .locals 3

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->storeReferredLabTestDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->showCustomDialog()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 612
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->hideProcessDialog()V

    .line 613
    const-string v1, "LabTestActivity"

    const-string v2, "Error while referring the members"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestActivity;->showRetryDialog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
