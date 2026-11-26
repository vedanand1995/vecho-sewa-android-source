.class public Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MyPeopleAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final CHART_SELECTION_SCREEN:Ljava/lang/String; = "chartSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final FILARIASIS_TYPE_SELECTION_SCREEN:Ljava/lang/String; = "filariasisTypeSelectionScreen"

.field private static final MALARIA_SCREEN:Ljava/lang/String; = "malariaScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MOTHER_DETAILS_SCREEN:Ljava/lang/String; = "motherDetailsScreen"

.field private static final RCH_REGISTER_TABLE_SCREEN:Ljava/lang/String; = "rchRegisterTableScreen"

.field private static final REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final VISIT_SELECTION_SCREEN:Ljava/lang/String; = "visitSelectionScreen"


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

.field public fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field public formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private formTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headerTitle:Lcom/google/android/material/textview/MaterialTextView;

.field private isMalaria:Ljava/lang/Boolean;

.field private isReAppear:Ljava/lang/Boolean;

.field private layoutParams:Landroid/widget/TableRow$LayoutParams;

.field private limit:J

.field public malariaService:Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;

.field private mapOfVisitFormWithRadioButtonId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memberAdditionalInfoDataBean:Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

.field private memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field public restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedFilariasisType:I

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedPeopleIndex:I

.field private selectedService:Ljava/lang/Integer;

.field private selectedServiceIndex:I

.field private selectedVisitIndex:I

.field public sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private spinner:Landroid/widget/Spinner;

.field public techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->timer:Ljava/util/Timer;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    const-wide/16 v0, 0x1e

    .line 130
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    .line 133
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    .line 135
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFilariasisType:I

    .line 140
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedVisitIndex:I

    const/4 v1, 0x0

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    .line 145
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isMalaria:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 147
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedVisitIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Landroid/widget/Button;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    return-object p0
.end method

.method private addTableRow(Landroid/widget/TableLayout;ILjava/util/LinkedHashMap;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1316
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 1317
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    .line 1319
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xf

    const/16 v5, 0xa

    .line 1320
    invoke-virtual {v2, v5, v3, v5, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 1321
    sget v3, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v6, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v3, v6, :cond_0

    .line 1322
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 1324
    :cond_0
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 1326
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1329
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v3, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x11

    .line 1330
    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1331
    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1332
    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1334
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1336
    :cond_1
    const-string v0, "N/A"

    invoke-virtual {v3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1340
    :cond_2
    new-instance p4, Landroid/widget/TableRow$LayoutParams;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p4, v4, v1, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 1341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    .line 1342
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->black:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/16 v1, 0x1e

    .line 1343
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 1344
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 1345
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1346
    invoke-virtual {v2, v0, p4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1347
    new-instance p4, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;

    invoke-direct {p4, p0, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v2, p4}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1361
    invoke-virtual {p1, v2, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private createTableLayout(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1280
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 1281
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 1282
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    .line 1285
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xf

    .line 1286
    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 1287
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1290
    new-instance v7, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v7, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x11

    .line 1291
    invoke-virtual {v7, v8}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1292
    invoke-virtual {v7, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1293
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1295
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->layoutParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v2, v7, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1297
    :cond_0
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v4, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1298
    invoke-virtual {v4, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1299
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v1, v5, v3, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 1300
    invoke-virtual {v2, v4, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    invoke-virtual {v0, v2, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 1304
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1307
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 1308
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addTableRow(Landroid/widget/TableLayout;ILjava/util/LinkedHashMap;Ljava/util/List;)V

    add-int/2addr v2, v1

    goto :goto_1

    .line 1312
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Okay"

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

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 698
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 702
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 703
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 705
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

    .line 706
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, " null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 710
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 712
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

    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 176
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 177
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 178
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    .line 182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setBodyDetail()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 8

    .line 932
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 938
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 937
    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 954
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "entity"

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    :goto_1
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 960
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void

    .line 941
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$9;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 948
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 949
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 950
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startDynamicFormActivityForFilaria()V
    .locals 8

    .line 987
    :try_start_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFilariasisType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 988
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 990
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2, v1, p0, v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1006
    const-string v1, "entity"

    const-string v2, "FILARIASIS_CAMPAIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1008
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void

    .line 993
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$11;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 1000
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 1001
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1002
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startDynamicFormActivityForLCDC(Ljava/lang/String;)V
    .locals 7

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0, v1, p0, p1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForLcdcCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 980
    const-string v1, "entity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 982
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void

    .line 967
    :catch_0
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$10;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 974
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Some error occurred. Please refresh and try again"

    .line 975
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 976
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 443
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 445
    const-string v1, "Select Asha Area"

    invoke-static {v0, v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 450
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 453
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->spinner:Landroid/widget/Spinner;

    .line 454
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 457
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 458
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 459
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addGraph()V
    .locals 5

    .line 434
    const-string v0, "chartSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    new-instance v3, Lcom/argusoft/sewa/android/app/model/MemberBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBoxForFamily()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 559
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 560
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSearchTextBoxForMember()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 509
    const-string v2, "Search Member"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 510
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 554
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$1$com-argusoft-sewa-android-app-activity-MyPeopleAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 673
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$2$com-argusoft-sewa-android-app-activity-MyPeopleAshaActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 687
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$showMDAorSideEffectsScreen$0$com-argusoft-sewa-android-app-activity-MyPeopleAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 385
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFilariasisType:I

    .line 386
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 387
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 388
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForFamily()V

    .line 389
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 391
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFilariasisType:I

    .line 392
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 393
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 394
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 395
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1013
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1014
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 1023
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1014
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1015
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_5

    const/4 p1, -0x1

    .line 1016
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    .line 1017
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 1018
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1019
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1020
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setVisits()V

    goto :goto_0

    .line 1022
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isMalaria:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1023
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isMalaria:Ljava/lang/Boolean;

    .line 1024
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    .line 1025
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMalariaScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    const/4 p3, 0x6

    if-ne p1, p3, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForFamily()V

    .line 1028
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x7

    if-ne p1, p3, :cond_3

    .line 1032
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showMDAorSideEffectsScreen()V

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    if-ne p1, p3, :cond_4

    .line 1034
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForFamily()V

    .line 1035
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDC02FamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, p3, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1038
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 1039
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 1041
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    goto :goto_1

    .line 1043
    :cond_5
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 201
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 214
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close My People ASHA?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 224
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 225
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v4, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v4, :cond_1f

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x0

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "serviceSelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_1
    const-string v2, "motherDetailsScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "memberSelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "malariaScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "chartSelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "visitSelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v4, "rchRegisterTableScreen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :sswitch_7
    const-string v2, "familySelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_8
    const-string v2, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 249
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    if-eq p1, v3, :cond_c

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 253
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    if-ne p1, v10, :cond_9

    .line 255
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForFamily()V

    .line 256
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    if-ne p1, v9, :cond_a

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showMDAorSideEffectsScreen()V

    goto/16 :goto_3

    :cond_a
    if-ne p1, v6, :cond_b

    .line 262
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForFamily()V

    .line 263
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDC02FamilyListFromDB(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 265
    :cond_b
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 266
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 269
    :cond_c
    const-string p1, "Please select a type of service"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 290
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v10, :cond_d

    .line 291
    invoke-virtual {p0, v12}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->finish()V

    goto/16 :goto_3

    .line 293
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 294
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    goto/16 :goto_3

    .line 297
    :cond_e
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    if-eq p1, v3, :cond_16

    .line 298
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 299
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 300
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v8, :cond_15

    if-eq p1, v7, :cond_14

    if-eq p1, v5, :cond_10

    if-eq p1, v9, :cond_f

    .line 326
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivity()V

    goto/16 :goto_3

    .line 323
    :cond_f
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivityForFilaria()V

    goto/16 :goto_3

    .line 309
    :cond_10
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isMalaria:Ljava/lang/Boolean;

    .line 310
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    if-nez p1, :cond_13

    .line 311
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberAdditionalInfoDataBean:Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-eqz p1, :cond_12

    .line 312
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getMalariaServiceDate()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_12

    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberAdditionalInfoDataBean:Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getMalariaServiceDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2

    .line 315
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Member can be examined only once per month"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void

    .line 313
    :cond_12
    :goto_2
    iput v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    .line 320
    :cond_13
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivity()V

    goto/16 :goto_3

    .line 305
    :cond_14
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showNotOnlineMessage()V

    .line 306
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveRCHServicesProvidedToMember()V

    goto/16 :goto_3

    .line 302
    :cond_15
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setVisits()V

    goto/16 :goto_3

    .line 330
    :cond_16
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 352
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    if-nez p1, :cond_17

    .line 355
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->malariaService:Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;->retrieveMembersForMalariaByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 357
    invoke-virtual {p0, v12}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMemberSelectionScreen(Z)V

    goto/16 :goto_3

    :cond_17
    if-ne p1, v11, :cond_1f

    .line 359
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 360
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->malariaService:Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;->retrieveMembersForMalariaReExamine(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 362
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 363
    invoke-virtual {p0, v12}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMemberSelectionScreen(Z)V

    goto/16 :goto_3

    .line 240
    :pswitch_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    .line 241
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 242
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 243
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 245
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 336
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedVisitIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 339
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedVisitIndex:I

    if-ne v0, v3, :cond_18

    .line 340
    const-string p1, "Please Select a Visit"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 341
    :cond_18
    const-string v0, "AWW_WEIGHT_GROWTH_GRAPH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 342
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addGraph()V

    goto/16 :goto_3

    .line 344
    :cond_19
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivity()V

    goto/16 :goto_3

    .line 349
    :pswitch_5
    invoke-virtual {p0, v12}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 274
    :pswitch_6
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    if-eq p1, v3, :cond_1c

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 276
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v10, :cond_1a

    .line 278
    const-string p1, "LCDC_CAMPAIGN"

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivityForLCDC(Ljava/lang/String;)V

    goto :goto_3

    .line 279
    :cond_1a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v9, :cond_1b

    .line 280
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivityForFilaria()V

    goto :goto_3

    .line 281
    :cond_1b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_1f

    .line 282
    const-string p1, "LCDC_CAMPAIGN_02"

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivityForLCDC(Ljava/lang/String;)V

    goto :goto_3

    .line 285
    :cond_1c
    const-string p1, "Please Select a Family"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 229
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 231
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 232
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 236
    :cond_1e
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    :cond_1f
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_8
        -0xa1992ec -> :sswitch_7
        -0x931baa0 -> :sswitch_6
        0xe6d904d -> :sswitch_5
        0x13772d5a -> :sswitch_4
        0x18c4aa2d -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x6a7caf4b -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 155
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 11

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 774
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 777
    :cond_0
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 794
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->malariaService:Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;->retrieveMembersForMalariaByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 788
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberListForRchRegister(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 785
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveWPDWomenByAshaArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 782
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 779
    :cond_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveEligibleCouplesByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 799
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    .line 800
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreFamilyBackground()V
    .locals 9

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 807
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDCByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 809
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFilariaByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 811
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDC02ByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 813
    :cond_2
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    .line 814
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreUiFamilies(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 2

    .line 758
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 759
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFilariasisType:I

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreFamilyBackground()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 762
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreBackground()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreBackground()V

    goto :goto_1

    .line 765
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreFamilyBackground()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 821
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 823
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 826
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_1

    .line 828
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_1
    return-void
.end method

.method public onLoadMoreUiFamilies(Ljava/util/List;)V
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

    .line 834
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 837
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 839
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1366
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_c

    .line 1375
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "serviceSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "motherDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "filariasisTypeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "malariaScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "chartSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "visitSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "rchRegisterTableScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1397
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1398
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1399
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 1400
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 1402
    :cond_b
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_2

    .line 1387
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    goto :goto_2

    .line 1410
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    goto :goto_2

    .line 1424
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setVisits()V

    goto :goto_2

    .line 1413
    :pswitch_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedService:Ljava/lang/Integer;

    .line 1414
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 1415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1416
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1417
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v3, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1418
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 1419
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 1420
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1378
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 1379
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1380
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v2, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1381
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    .line 1382
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    .line 1383
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_2

    .line 1392
    :pswitch_6
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    .line 1393
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    goto :goto_2

    .line 1407
    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    :goto_2
    return v1

    :cond_c
    return v2

    .line 1369
    :cond_d
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_9
        -0xa1992ec -> :sswitch_8
        -0x931baa0 -> :sswitch_7
        0xe6d904d -> :sswitch_6
        0x13772d5a -> :sswitch_5
        0x18c4aa2d -> :sswitch_4
        0x1def8573 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x6a7caf4b -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 161
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setContentView(Landroid/view/View;)V

    .line 165
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->finish()V

    .line 172
    :cond_1
    const-string v0, "My People ASHA"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V
    .locals 7

    const-wide/16 v0, 0x0

    .line 651
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v0, -0x1

    .line 652
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFilariaByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 655
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForFilariaByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 659
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveLCDC02FamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v0, -0x1

    .line 637
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    .line 639
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 641
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDC02ByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 642
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForLCDC02ByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 646
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 621
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v0, -0x1

    .line 622
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    .line 624
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 626
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDCByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 627
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForLCDCByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 631
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 12

    .line 719
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->searchString:Ljava/lang/String;

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    .line 721
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 722
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    const/4 v2, -0x1

    .line 723
    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    .line 724
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedServiceIndex:I

    const/4 v11, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v11, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 746
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    move-object v5, p1

    move-wide v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMalariaScreen(Ljava/lang/String;)V

    return-void

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberListForNPCB(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 739
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setNpcbMemberListScreen()V

    return-void

    .line 735
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    move-object v5, p1

    move-wide v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberListForRchRegister(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 732
    :cond_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    move-object v5, p1

    move-wide v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveWPDWomenByAshaArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 729
    :cond_5
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    const/4 v4, 0x0

    move-object v6, p1

    move-wide v9, v0

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 726
    :cond_6
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaArea:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    move-object v5, p1

    move-wide v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveEligibleCouplesByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 751
    :goto_0
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->offset:J

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    .line 753
    :goto_1
    invoke-virtual {p0, v11}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMemberSelectionScreen(Z)V

    return-void
.end method

.method public retrieveRCHServicesProvidedToMember()V
    .locals 11

    .line 1200
    const-string v0, "rchRegisterTableScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1202
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 1204
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, -0x5

    const/4 v4, 0x1

    .line 1205
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 1206
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, -0xf

    .line 1208
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1209
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, -0x31

    .line 1211
    invoke-virtual {v5, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 1212
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 1214
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1215
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1216
    const-string v7, "memberId"

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1220
    const-string v2, "Child Services Provided"

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_asha_child_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v1, v6, v7}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1221
    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/Date;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1222
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1224
    :cond_1
    new-instance v2, Ljava/util/Date;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1225
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1226
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1227
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "629"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1229
    const-string v2, "LMP Follow Up Services Provided"

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_asha_lmp_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v1, v6, v7}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const-string v2, "ANC Services Provided"

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_asha_anc_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v1, v6, v7}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-string v2, "WPD Services Provided"

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_asha_wpd_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v1, v6, v7}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-string v2, "PNC Services Provided"

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_asha_pnc_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v1, v6, v7}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1236
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1238
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1239
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1240
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1247
    :cond_4
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showProcessDialog()V

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 191
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 664
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 669
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 671
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 673
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    if-eqz p1, :cond_0

    .line 676
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v0, v2, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 680
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 684
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 685
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMalariaScreen(Ljava/lang/String;)V
    .locals 4

    .line 845
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 846
    const-string p1, "malariaScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 847
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 848
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v1, "Malaria Examine"

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v1, "Malaria Re Examine"

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 860
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 861
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 863
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 864
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberSelectionScreen(Z)V
    .locals 10

    .line 899
    const-string p1, "memberSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 900
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 901
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 902
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 903
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 904
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 905
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 906
    const-string v1, "Select Member"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 907
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 910
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 919
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, p1, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 920
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 921
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 923
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    const-string v0, "No members found."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 924
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 925
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 927
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 928
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMotherDetailsScreen()V
    .locals 7

    .line 1049
    const-string v0, "motherDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1051
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1054
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Members Details"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1055
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v1, :cond_b

    .line 1056
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v1

    .line 1058
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Member Name"

    .line 1059
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1058
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1060
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1062
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Health Id"

    .line 1063
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1062
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1064
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1066
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Family ID"

    .line 1067
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1068
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1070
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Mobile Number"

    .line 1072
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1071
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1073
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Date of birth"

    .line 1077
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1076
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1078
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Age"

    .line 1081
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1080
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1082
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/util/Date;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1083
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1085
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1086
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1087
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1088
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1089
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v6

    .line 1090
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v6, v2

    .line 1091
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "Age at Wedding"

    .line 1092
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1091
    invoke-static {v4, v4, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1096
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1097
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "LMP date"

    .line 1098
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1097
    invoke-static {v4, v4, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1099
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1102
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Religion"

    .line 1104
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 1106
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1109
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Caste"

    .line 1111
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 1113
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1116
    :cond_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "BPL"

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 1118
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Family is BPL"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1121
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 1122
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Family is not BPL"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1126
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1128
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Total Living Children"

    .line 1129
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1128
    invoke-static {v4, v4, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1130
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1133
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1135
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Total Male Children"

    .line 1136
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1135
    invoke-static {v4, v4, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1137
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1141
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v5, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1143
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Total Female Children"

    .line 1144
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1145
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1148
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getLatestChildByMotherId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1150
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Latest child name"

    .line 1151
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1150
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1152
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1154
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Latest child gender"

    .line 1155
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1154
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1156
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1157
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Male"

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1159
    :cond_9
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Female"

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1162
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Latest child age"

    .line 1163
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1162
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1164
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/util/Date;

    .line 1165
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1168
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Address"

    .line 1169
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 1171
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setNpcbMemberListScreen()V
    .locals 10

    .line 870
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 871
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 874
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    const-string v3, "National Program for Blindness Control Referred Patients"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 876
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 877
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 878
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "Status"

    .line 879
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 878
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 882
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 884
    :cond_1
    const-string v0, "No member is referred for National Program for Blindness Control screening."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 885
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 887
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Main Menu"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 5

    const/4 v0, 0x0

    .line 469
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->isReAppear:Ljava/lang/Boolean;

    .line 470
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 473
    const-string v0, "Select the type of Service"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    const-string v1, "ASHA_LMPFU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    const-string v1, "ASHA_ANC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    const-string v1, "ASHA_WPD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->formTypes:Ljava/util/List;

    const-string v1, "MALARIA_EXAMINE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Eligible Couples"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Pregnant Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "WPD Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "RCH Register"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "National Program for Blindness Control Referred Patients"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Malaria Incentive"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Leprosy routine survey"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Filariasis Campaign"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "LCDC Campaign"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 500
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setServicesProvidedScreenForRchRegister(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Member Name"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Health Id"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family ID"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 1259
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1261
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v2, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1266
    const-string v5, "hidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1267
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1270
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v3, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->createTableLayout(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1273
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v0, "No services have been provided to this member yet."

    .line 1274
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1276
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setVisits()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 407
    const-string v0, "visitSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    const-string v1, "AWW_WEIGHT_GROWTH_GRAPH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->mapOfVisitFormWithRadioButtonId:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 426
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public showMDAorSideEffectsScreen()V
    .locals 5

    const/4 v0, -0x1

    .line 374
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFilariasisType:I

    .line 375
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedPeopleIndex:I

    .line 376
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->selectedFamilyIndex:I

    .line 378
    const-string v0, "filariasisTypeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->screen:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Filariasis Mass Drug Administration"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Side Effect Reporting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 398
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 7

    .line 1177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->hideProcessDialog()V

    .line 1179
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$12;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V

    .line 1191
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 1192
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :cond_0
    return-void
.end method
