.class public Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NPCBScreeningOA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final COLOR_ACCENT:I

.field private static final COLOR_BORDER:I

.field private static final COLOR_MUTED:I

.field private static final COLOR_SUCCESS:I

.field private static final COLOR_SURFACE:I

.field private static final COLOR_TEXT:I

.field private static final DELAY:J = 0x1f4L

.field private static final DETAILS_SEARCH_FIELD_LABELS:[Ljava/lang/String;

.field private static final DETAILS_SEARCH_HINTS:[Ljava/lang/String;

.field private static final DETAILS_SEARCH_LABELS:[Ljava/lang/String;

.field private static final DETAILS_SEARCH_LENGTHS:[I

.field private static final DETAILS_SEARCH_TYPES:[Ljava/lang/String;

.field private static final INDEX_APPROVAL_SECTION:I = 0x3

.field private static final INDEX_BENEFICIARIES_FOR_FOLLOW_UP:I = 0x2

.field private static final INDEX_BENEFICIARIES_SENT_BY_CHO:I = 0x1

.field private static final INDEX_FORTY_PLUS_MEMBERS:I = 0x0

.field private static final INDEX_REFERRED_BY_RBSK:I = 0x4

.field private static final LIMIT:I = 0x1e

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MIN_LOCATION_MEMBER_SEARCH_LENGTH:I = 0x2

.field private static final NPCB_STATUS_COMPLETED:Ljava/lang/String; = "COMPLETED"

.field private static final NPCB_STATUS_REFERRED_TO_CHO:Ljava/lang/String; = "REFERRED_TO_CHO"

.field private static final NPCB_STATUS_REFERRED_TO_OA:Ljava/lang/String; = "REFERRED_TO_OA"

.field private static final NPCB_STATUS_REFERRED_TO_OS:Ljava/lang/String; = "REFERRED_TO_OS"

.field private static final RBSK_REFERRED_SCREEN:Ljava/lang/String; = "rbskReferredScreen"

.field private static final REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY:I = 0x12c

.field private static final SERVICE_APPROVAL_SECTION:Ljava/lang/String; = "approvalSection"

.field private static final SERVICE_FORTY_PLUS_MEMBERS:Ljava/lang/String; = "fortyPlusMembers"

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final SERVICE_SENT_BY_CHO:Ljava/lang/String; = "sentByCHO"

.field private static final SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP:Ljava/lang/String; = "sentByCHOForFollowUp"

.field private static final SERVICE_SENT_BY_RBSK:Ljava/lang/String; = "sentByRBSK"

.field private static final TECHO_ID_POLL_ATTEMPTS:I = 0x14

.field private static final TECHO_ID_POLL_INTERVAL_MS:J = 0x3e8L


# instance fields
.field private activeRequestId:I

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private currentFormattedSearch:Ljava/lang/String;

.field private currentSearchText:Ljava/lang/String;

.field private currentSearchType:Ljava/lang/String;

.field private detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private detailsSearchEditText:Landroid/widget/EditText;

.field private detailsSearchTypeIndex:I

.field private final detailsTypeChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/textview/MaterialTextView;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private memberDataBeans:Ljava/util/List;
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

.field private noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private notFoundCard:Landroid/widget/LinearLayout;

.field private offset:I

.field private onsiteHintView:Lcom/google/android/material/textview/MaterialTextView;

.field private onsiteRegistrationMode:Z

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private questionTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private rbskEmptyView:Lcom/google/android/material/textview/MaterialTextView;

.field private rbskLegendRow:Landroid/widget/LinearLayout;

.field private rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private rbskOffset:I

.field private rbskOnsiteRegistration:Z

.field private rbskReferredMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private rbskReferredScreening:Z

.field private rbskScreeningStudentDetailsId:Ljava/lang/Integer;

.field private rbskSearchInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private rbskSearchString:Ljava/lang/String;

.field private rbskTitleRow:Landroid/widget/LinearLayout;

.field private registerOnsiteButton:Landroid/widget/Button;

.field private screen:Ljava/lang/String;

.field private searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

.field private searchString:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedServiceIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private titleTextView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public static synthetic $r8$lambda$9AWwqYow044y35FQomw8uKQRyoM(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V
    .locals 0

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->performRbskSearch()V

    return-void
.end method

.method public static synthetic $r8$lambda$h06ovrE1Uh-eHVZ7FF6jyyNzF1E(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V
    .locals 0

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->performDetailsSearch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 833
    const-string v0, "AADHAAR"

    const-string v1, "MEMBER_ID"

    const-string v2, "MOBILE_NUMBER"

    const-string v3, "NAME"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_TYPES:[Ljava/lang/String;

    .line 836
    const-string v0, "Mobile"

    const-string v1, "Name"

    const-string v2, "Aadhaar"

    const-string v3, "Techo ID"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_LABELS:[Ljava/lang/String;

    .line 839
    const-string v0, "12 digits"

    const-string v1, "Letters and digits, no spaces"

    const-string v2, "10 digits, starts with 6-9"

    const-string v4, "At least 3 letters"

    filled-new-array {v2, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_HINTS:[Ljava/lang/String;

    .line 842
    const-string v0, "Member\'s name"

    const-string v1, "Aadhaar number"

    const-string v2, "Mobile number"

    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_FIELD_LABELS:[Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/16 v2, 0xa

    .line 846
    filled-new-array {v2, v0, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_LENGTHS:[I

    .line 850
    const-string v0, "#1F63B5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_ACCENT:I

    .line 851
    const-string v0, "#2E7D32"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_SUCCESS:I

    .line 852
    const-string v0, "#F5F8FB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_SURFACE:I

    .line 853
    const-string v0, "#D6DFE8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_BORDER:I

    .line 854
    const-string v0, "#1F2D3D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_TEXT:I

    .line 855
    const-string v0, "#5B7186"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_MUTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 138
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedServiceIndex:I

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsTypeChips:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)Ljava/util/Timer;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    return p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$304(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)I
    .locals 1

    .line 76
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    return v0
.end method

.method private addLegendItem(Landroid/widget/LinearLayout;IILjava/lang/String;)V
    .locals 3

    .line 630
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 631
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 633
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x10

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    .line 634
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 635
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 638
    new-instance p2, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p4, 0x41400000    # 12.0f

    .line 640
    invoke-virtual {p2, p4}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    .line 641
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 643
    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 644
    invoke-virtual {p2, p4}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addNotFoundCard()V
    .locals 5

    .line 1100
    sget v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_SURFACE:I

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createCard(I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    .line 1101
    sget v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_TEXT:I

    const/4 v2, 0x1

    const-string v3, "No member found"

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createLabel(Ljava/lang/String;FIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1102
    sget v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_MUTED:I

    const-string v1, "Check the details and search again. If the member is not registered yet, you can register them on-site."

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createLabel(Ljava/lang/String;FIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v1, 0x4

    .line 1103
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1104
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1106
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1107
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 1108
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1109
    sget v1, Lcom/argusoft/sewa/android/app/R$font;->roboto_bold:I

    invoke-static {p0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, -0x1

    .line 1110
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1111
    sget v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_SUCCESS:I

    const/16 v3, 0xa

    invoke-direct {p0, v2, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    const-string v2, "Register on-site"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    .line 1114
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1113
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegisterOnsiteButtonIfApplicable()V
    .locals 5

    .line 1128
    const-string v0, "MOBILE_NUMBER"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NAME"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchType:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1133
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 1134
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 1135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    sget v2, Lcom/argusoft/sewa/android/app/R$font;->roboto_medium:I

    invoke-static {p0, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    sget v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_SUCCESS:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    const/4 v3, -0x1

    const/16 v4, 0xa

    invoke-direct {p0, v3, v2, v4}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    const-string v2, "Don\'t see them below? Register on-site"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x2a

    .line 1141
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1142
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1143
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda25;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyDetailsSearchInput()V
    .locals 6

    .line 1006
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 1009
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_FIELD_LABELS:[Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_HINTS:[Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 1014
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_LENGTHS:[I

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget v0, v0, v1

    .line 1015
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_TYPES:[Ljava/lang/String;

    aget-object v1, v2, v1

    const-string v3, "MOBILE_NUMBER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1016
    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v2, v2, v3

    const-string v3, "NAME"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1017
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    if-lez v0, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v4, 0x2001

    goto :goto_0

    :cond_2
    const v4, 0x81001

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1022
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    if-lez v0, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    const/16 v5, 0x28

    :goto_1
    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    .line 1025
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 1033
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 1043
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private buildRbskLegendRow()Landroid/widget/LinearLayout;
    .locals 5

    .line 617
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 618
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 619
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xa

    .line 620
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 621
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_rbsk_vision:I

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    const-string v3, "Vision"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addLegendItem(Landroid/widget/LinearLayout;IILjava/lang/String;)V

    .line 624
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_rbsk_color_blind:I

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    const-string v3, "Color blind"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addLegendItem(Landroid/widget/LinearLayout;IILjava/lang/String;)V

    .line 625
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_rbsk_spectacles:I

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->npcb_rbsk_spectacles_dot:I

    const-string v3, "Spectacles"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addLegendItem(Landroid/widget/LinearLayout;IILjava/lang/String;)V

    return-object v0
.end method

.method private buildSyntheticMemberFromRbskReferral(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 4

    .line 725
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>()V

    .line 726
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 727
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setFirstName(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setDob(Ljava/lang/Long;)V

    .line 729
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getGender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setGender(Ljava/lang/String;)V

    return-object v0
.end method

.method private buildTitleRowWithInfo(Lcom/google/android/material/textview/MaterialTextView;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5

    .line 1484
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1485
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1486
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1487
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1494
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1495
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_info_black:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1496
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1498
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1499
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101045c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1500
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v1, 0x14

    .line 1502
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    const/16 v2, 0x8

    .line 1503
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    .line 1504
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1505
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    .line 1507
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1508
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1509
    const-string v1, "Info"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1510
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private convertMembersToListItems(Ljava/util/List;)Ljava/util/List;
    .locals 10
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

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 1404
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1406
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 1407
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    .line 1408
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    .line 1409
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    .line 1412
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImtMemberNpcbStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1406
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private convertRbskMembersToListItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;

    .line 550
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v3

    .line 552
    :goto_1
    const-string v4, "AWC"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getReferredFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 554
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>()V

    .line 555
    invoke-virtual {v5, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBoldText(Ljava/lang/String;)V

    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->resolveConditionTints(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setLeadingIconTintColors(Ljava/util/List;)V

    .line 558
    invoke-virtual {v5, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setLeadingIconResIds(Ljava/util/List;)V

    .line 559
    const-string v2, ": "

    if-eqz v4, :cond_2

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Techo ID"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBoldText2(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setRegularText2(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referred from"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBoldText3(Ljava/lang/String;)V

    .line 563
    const-string v1, "Anganwadi"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setRegularText3(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 565
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Student ID"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBoldText2(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getStudentUniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getStudentUniqueId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setRegularText2(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getSchoolName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getSchoolName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    .line 568
    :goto_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getVillageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getVillageName()Ljava/lang/String;

    move-result-object v3

    .line 569
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "School"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setBoldText3(Ljava/lang/String;)V

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Village"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setRegularText3(Ljava/lang/String;)V

    .line 572
    :goto_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private createCard(I)Landroid/widget/LinearLayout;
    .locals 5

    .line 891
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 892
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 893
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 895
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 896
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    sget v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_BORDER:I

    const/16 v3, 0xe

    invoke-direct {p0, p1, v1, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 898
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p1

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method private createHintText(Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 879
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 880
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 881
    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    .line 882
    sget p1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_MUTED:I

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 883
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    .line 885
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p1

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    return-object v0
.end method

.method private createLabel(Ljava/lang/String;FIZ)Lcom/google/android/material/textview/MaterialTextView;
    .locals 1

    .line 903
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 904
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    .line 906
    invoke-virtual {v0, p3}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 907
    sget p1, Lcom/argusoft/sewa/android/app/R$font;->roboto_bold:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/R$font;->roboto_regular:I

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 908
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createSearchRow(Ljava/lang/String;Ljava/lang/Runnable;[Lcom/google/android/material/textfield/TextInputLayout;)Landroid/widget/LinearLayout;
    .locals 6

    .line 1150
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x30

    .line 1152
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1153
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x32

    invoke-static {p0, p1, v3, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    .line 1157
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 1158
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1159
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    .line 1161
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1162
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1163
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda26;

    invoke-direct {v2, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda26;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1170
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$2;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1187
    :cond_0
    aput-object p1, p3, v1

    .line 1188
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1190
    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1191
    sget p3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_search:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1192
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1193
    sget p3, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_ACCENT:I

    const/16 v1, 0xc

    invoke-direct {p0, p3, p3, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1195
    const-string p3, "Search"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p3, 0x34

    .line 1196
    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p3

    .line 1197
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x8

    .line 1198
    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/4 p3, 0x6

    .line 1199
    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p3

    iput p3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1200
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p3

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v1

    invoke-virtual {p1, p3, v2, v3, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 1202
    new-instance p3, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda27;

    invoke-direct {p3, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda27;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createTextWatcherForOfflineSearch()Landroid/text/TextWatcher;
    .locals 1

    .line 779
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    return-object v0
.end method

.method private createTypeSelector()Landroid/widget/LinearLayout;
    .locals 10

    .line 954
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsTypeChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 955
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 956
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 957
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 959
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v6

    invoke-virtual {v2, v1, v3, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 960
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    sget v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_SURFACE:I

    sget v3, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_BORDER:I

    const/16 v6, 0xa

    invoke-direct {p0, v2, v3, v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x3

    .line 962
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v6

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v7

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v2

    invoke-virtual {v0, v3, v6, v7, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x0

    .line 963
    :goto_0
    sget-object v3, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_TYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 965
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v3, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 966
    sget-object v6, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_LABELS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    .line 967
    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/high16 v6, 0x41500000    # 13.0f

    .line 968
    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    .line 969
    sget v6, Lcom/argusoft/sewa/android/app/R$font;->roboto_medium:I

    invoke-static {p0, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 970
    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v9

    invoke-direct {p0, v7}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v7

    invoke-virtual {v3, v6, v8, v9, v7}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 971
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda24;

    invoke-direct {v6, p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda24;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;I)V

    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    iget v6, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    if-ne v2, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->styleSegment(Lcom/google/android/material/textview/MaterialTextView;Z)V

    .line 974
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsTypeChips:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private dpToPx(I)I
    .locals 1

    int-to-float p1, p1

    .line 1516
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getMemberAreaHierarchy(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;
    .locals 4

    .line 360
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 367
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid area id for member: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getNpcbStatusMessage(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;
    .locals 2

    .line 329
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImtMemberNpcbStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    const-string v1, "REFERRED_TO_CHO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    const-string v0, "This member is already screened by the field health worker and referred to the CHO of their HWC. Screening by the CHO is still pending."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const-string v1, "REFERRED_TO_OA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    const-string v0, "This member is already screened by the CHO and referred to the Ophthalmic Assistant of their PHC/CHC. Please screen this member from the \'Referrals sent by CHO\' section."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_2
    const-string v1, "REFERRED_TO_OS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    const-string v0, "This member is already screened by the Ophthalmic Assistant and referred to the Ophthalmic Surgeon of their referral hospital. Treatment by the Ophthalmic Surgeon is still pending."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_3
    const-string v1, "COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    const-string v0, "National Program for Blindness Control screening of this member is already completed."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_4
    const-string v0, "National Program for Blindness Control screening of this member is already in progress, so a new screening cannot be started from here."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getMemberAreaHierarchy(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Area: "

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSearchClickOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;
    .locals 1

    .line 811
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda17;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    return-object v0
.end method

.method private handleMemberSelection()V
    .locals 2

    .line 297
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 299
    const-string v0, "fortyPlusMembers"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getNpcbStatusMessage(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 303
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    .line 308
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    .line 309
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    .line 310
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredScreening:Z

    .line 311
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->startDynamicFormActivity()V

    goto :goto_1

    .line 314
    :cond_2
    const-string v0, "Please Select a Member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleServiceSelection()V
    .locals 8

    .line 373
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedServiceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 374
    const-string v1, "sentByRBSK"

    const-string v2, "approvalSection"

    const-string v3, "sentByCHOForFollowUp"

    const-string v4, "sentByCHO"

    const-string v5, "fortyPlusMembers"

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    const/4 v7, 0x3

    if-eq v0, v7, :cond_1

    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    goto :goto_0

    .line 385
    :cond_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    goto :goto_0

    .line 382
    :cond_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_3
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    goto :goto_0

    .line 376
    :cond_4
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 394
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setFortyPlusDetailsScreen()V

    return-void

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->openRbskReferredScreen()V

    return-void

    .line 402
    :cond_6
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 404
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addSearchTextBoxOnline()V

    .line 405
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    .line 406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 408
    :cond_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 409
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 413
    :cond_8
    const-string v0, "Please select a type of service"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private hideKeyboard(Landroid/widget/EditText;)V
    .locals 2

    .line 1208
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 203
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->globalPanel:Landroid/widget/LinearLayout;

    .line 204
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 205
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    .line 211
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setServiceSelectionScreen()V

    return-void
.end method

.method static synthetic lambda$applyDetailsSearchInput$13(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1035
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 1036
    invoke-static {p3}, Ljava/lang/Character;->isLetter(C)Z

    move-result p4

    if-nez p4, :cond_0

    const/16 p4, 0x20

    if-eq p3, p4, :cond_0

    .line 1037
    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$applyDetailsSearchInput$14(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1045
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p3

    if-nez p3, :cond_0

    .line 1046
    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$createSearchRow$17(Ljava/lang/Runnable;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1165
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$createSearchRow$18(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1202
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onRbskMemberClicked(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;)V
    .locals 6

    .line 673
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    .line 675
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 678
    :goto_1
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredScreening:Z

    const/16 v2, -0x97

    .line 679
    const-string v3, " now?"

    const-string v4, "Screen "

    if-nez v1, :cond_2

    .line 680
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;)V

    .line 691
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 695
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    .line 698
    :cond_2
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;)V

    .line 709
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 713
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private onsiteRegistrationClicked()V
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    const-string v0, "You need internet to register a member on-site."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1228
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda22;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    .line 1240
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Have you already searched for this member using their Mobile Number, Name, Aadhaar or Techo ID?\n\nContinue with on-site registration only if the member is truly not found in the system."

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1243
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private performDetailsSearch()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1073
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_HINTS:[Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1075
    :cond_1
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->validateDetailsInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 1081
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1083
    const-string v0, "You need internet to search members online"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1086
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideKeyboard(Landroid/widget/EditText;)V

    .line 1087
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 1088
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_TYPES:[Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchType:Ljava/lang/String;

    .line 1089
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1090
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1091
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private performRbskSearch()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 465
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    const-string v0, "You need internet to view children referred by RBSK."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideKeyboard(Landroid/widget/EditText;)V

    .line 470
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 471
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    :cond_4
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->loadRbskReferredMembers(Ljava/lang/String;I)V

    return-void
.end method

.method private resetRbskReferredState()V
    .locals 1

    .line 1465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    const/4 v0, 0x0

    .line 1466
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    const/4 v0, 0x0

    .line 1467
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchString:Ljava/lang/String;

    .line 1468
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1469
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskTitleRow:Landroid/widget/LinearLayout;

    .line 1470
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskEmptyView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1471
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method private resolveConditionTints(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getVisionImpairment()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getColorBlindness()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 590
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getWearsSpectacles()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 591
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getVisionImpairment()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 592
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getColorBlindness()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 593
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getWearsSpectacles()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v1, :cond_2

    .line 596
    const-string v1, "VISION_IMPAIRMENT"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getDefectCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 597
    const-string v1, "OTHER_DISEASES"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getDefectCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 598
    const-string v1, "SPECTACLES"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getDefectCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :cond_2
    if-eqz v2, :cond_3

    .line 601
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_rbsk_vision:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v3, :cond_4

    .line 605
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_rbsk_color_blind:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v4, :cond_5

    .line 609
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->npcb_rbsk_spectacles_dot:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_rbsk_spectacles:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private resolveDefectCategoryTint(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 649
    const-string v0, "VISION_IMPAIRMENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 651
    :cond_0
    const-string v0, "OTHER_DISEASES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 653
    :cond_1
    const-string v0, "SPECTACLES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 654
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->npcb_rbsk_spectacles_dot:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 870
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 871
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 872
    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, 0x1

    .line 873
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private searchFortyPlusMembers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1282
    :cond_0
    const-string v2, "MOBILE_NUMBER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1283
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1283
    const-string v12, "FORTY_PLUS_MEMBERS"

    const/4 v13, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v15}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1285
    :cond_1
    const-string v2, "FAMILY_ID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1286
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1286
    const-string v12, "FORTY_PLUS_MEMBERS"

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v15}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1288
    :cond_2
    const-string v2, "MEMBER_ID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1289
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1289
    const-string v12, "FORTY_PLUS_MEMBERS"

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v15}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1291
    :cond_3
    const-string v2, "NAME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1292
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1292
    const-string v12, "FORTY_PLUS_MEMBERS"

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v15}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1294
    :cond_4
    const-string v2, "AADHAAR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1295
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1295
    const-string v11, "FORTY_PLUS_MEMBERS"

    move-object/from16 v14, p1

    invoke-virtual/range {v2 .. v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1300
    :cond_5
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1300
    const-string v11, "FORTY_PLUS_MEMBERS"

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1279
    :cond_6
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private selectDetailsSearchType(I)V
    .locals 4

    .line 986
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 989
    :cond_0
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 990
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsTypeChips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 991
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsTypeChips:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->styleSegment(Lcom/google/android/material/textview/MaterialTextView;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    .line 994
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :cond_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->applyDetailsSearchInput()V

    return-void
.end method

.method private showInfoDialog(Ljava/lang/String;)V
    .locals 3

    .line 1521
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, -0x69

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1522
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 4

    .line 1420
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    .line 1421
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForNPCBFormsFromOnline(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 1422
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 1424
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "onsiteRegistration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameForLog"

    const-string v3, "On-site Member Added"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    :cond_0
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    if-eqz v0, :cond_1

    .line 1431
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "rbskOnsiteRegistration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1434
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    .line 1435
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1434
    const-string v3, "rbskStudentDetailsId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_1
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredScreening:Z

    if-eqz v0, :cond_2

    .line 1442
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "npcbSchoolDetailsKnown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1446
    const-string v1, "sentByCHOForFollowUp"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "entity"

    if-eqz v1, :cond_3

    .line 1447
    const-string v1, "CHO_NPCB_FU"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1448
    :cond_3
    const-string v1, "approvalSection"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1449
    const-string v1, "NPCB_SPECTS_APPROVAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1451
    :cond_4
    const-string v1, "OA_NPCB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x12c

    .line 1453
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private styleSegment(Lcom/google/android/material/textview/MaterialTextView;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 981
    sget v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_ACCENT:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->roundedBackground(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    .line 982
    :cond_1
    sget p2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_TEXT:I

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    return-void
.end method

.method private validateDetailsInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1057
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_TYPES:[Ljava/lang/String;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "MOBILE_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "AADHAAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1067
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>()V

    .line 1066
    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->alphanumericWithSpace(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1067
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Enter a valid Techo ID (letters and digits only)"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1059
    :pswitch_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->mobileNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1063
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    const-string v1, "[A-Za-z ]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1064
    :cond_4
    const-string p1, "Enter a valid name (letters and spaces only, at least 3 letters)"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1061
    :pswitch_2
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->aadhaarNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ebffef2 -> :sswitch_2
        0x24728b -> :sswitch_1
        0x58802d86 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addSearchTextBoxOnline()V
    .locals 9

    .line 419
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 420
    const-string v0, "MEMBER_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v0, "FAMILY_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v0, "NAME"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v0, "MOBILE_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    const-string v0, "ABHA_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const-string v0, "AADHAAR"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v8, Lcom/argusoft/sewa/android/app/component/SearchComponent;

    const-string v0, "Enter text and click search icon to search online"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getSearchClickOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/SearchComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;)V

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    .line 428
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createTextWatcherForOfflineSearch()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addTextWatcherInEditText(Landroid/text/TextWatcher;)V

    .line 429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method awaitAndShowTechoId(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    const-wide/16 v1, 0x3e8

    .line 1556
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->retrieveLoggerBeanByChecksum(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LoggerBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1562
    const-string v2, "P"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1565
    :cond_0
    const-string p1, "S"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1566
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getGeneratedId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1558
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 p1, 0x0

    .line 1570
    :goto_2
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showTechoIdResult(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$addNotFoundCard$15$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/view/View;)V
    .locals 0

    .line 1115
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationClicked()V

    return-void
.end method

.method synthetic lambda$addRegisterOnsiteButtonIfApplicable$16$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/view/View;)V
    .locals 0

    .line 1144
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationClicked()V

    return-void
.end method

.method synthetic lambda$applyDetailsSearchInput$12$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    if-nez p5, :cond_0

    if-le p3, p2, :cond_0

    .line 1026
    const-string p3, "012345"

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ltz p3, :cond_0

    .line 1027
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "000000000"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->mobileNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1028
    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$buildTitleRowWithInfo$24$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1510
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showInfoDialog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$createTypeSelector$11$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(ILandroid/view/View;)V
    .locals 0

    .line 972
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectDetailsSearchType(I)V

    return-void
.end method

.method synthetic lambda$getSearchClickOnline$10$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 0
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 813
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 816
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchType:Ljava/lang/String;

    .line 817
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 818
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 819
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    iget p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 821
    :cond_1
    const-string p1, "You need internet to search members online"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$loadRbskReferredMembers$2$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error retrieving RBSK-referred members: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/view/View;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->navigateToHomeScreen(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->finish()V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onLoadMoreBackground$25$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 3

    .line 1647
    const-string v0, "sentByRBSK"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz v0, :cond_1

    .line 1649
    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz v0, :cond_1

    .line 1652
    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    .line 1654
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading more members: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onRbskMemberClicked$4$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;Landroid/view/View;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 682
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 683
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    const/4 p2, 0x1

    .line 684
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    .line 685
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getStudentDetailsId()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    .line 686
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->buildSyntheticMemberFromRbskReferral(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 687
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 688
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->startDynamicFormActivity()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onRbskMemberClicked$5$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;Landroid/view/View;)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 700
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 701
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p2

    if-nez p2, :cond_0

    .line 702
    const-string p1, "You need internet to view children referred by RBSK."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 706
    iget p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screenRbskMappedMember(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onsiteRegistrationClicked$19$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/view/View;)V
    .locals 2

    .line 1229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 1230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1231
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    const/4 p1, 0x0

    .line 1232
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    const/4 v1, 0x0

    .line 1233
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    .line 1234
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredScreening:Z

    .line 1235
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1236
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 1237
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->startDynamicFormActivity()V

    :cond_0
    return-void
.end method

.method synthetic lambda$retrieveMemberListFromOnline$20$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 2

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error retrieving members: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$screenRbskMappedMember$6$com-argusoft-sewa-android-app-activity-NPCBScreeningOA()V
    .locals 1

    .line 749
    const-string v0, "Could not find this child\'s record. Please try again."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$screenRbskMappedMember$7$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Ljava/lang/String;)V
    .locals 0

    .line 759
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$screenRbskMappedMember$8$com-argusoft-sewa-android-app-activity-NPCBScreeningOA()V
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 769
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->startDynamicFormActivity()V

    return-void
.end method

.method synthetic lambda$screenRbskMappedMember$9$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 2

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error finding member: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$21$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1364
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 1365
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 p1, 0x0

    .line 1366
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setSubTitle(Ljava/lang/String;)V

    .line 1367
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->handleMemberSelection()V

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$22$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1370
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$23$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 1395
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setRbskReferredScreen$3$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    if-ltz p3, :cond_0

    .line 524
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onRbskMemberClicked(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setServiceSelectionScreen$1$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 272
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedServiceIndex:I

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onClick(Landroid/view/View;)V

    return-void
.end method

.method loadRbskReferredMembers(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    .line 477
    :try_start_0
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    .line 478
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchString:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const/16 v1, 0x1e

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getRBSKVisionImpairmentReferredMembers(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    .line 482
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    .line 483
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setRbskReferredScreen(I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 485
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error retrieving RBSK-referred members: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda21;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1527
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v0, 0x12c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 1531
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p3, :cond_2

    .line 1532
    const-string v0, "storedFormChecksum"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    .line 1533
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->doUpdate(Ljava/lang/Boolean;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 1540
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->awaitAndShowTechoId(Ljava/lang/String;)V

    .line 1542
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setServiceSelectionScreen()V

    goto :goto_3

    .line 1544
    :cond_4
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->navigateToHomeScreen(Z)V

    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 216
    const-string v0, "serviceSelectionScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda18;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    .line 227
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close National Program for Blindness Control Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 230
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setSubTitle(Ljava/lang/String;)V

    .line 233
    const-string v0, "memberSelectionScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rbskReferredScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setServiceSelectionScreen()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 287
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setSubTitle(Ljava/lang/String;)V

    .line 288
    const-string p1, "memberSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->handleMemberSelection()V

    goto :goto_0

    .line 290
    :cond_0
    const-string p1, "serviceSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->handleServiceSelection()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 183
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->initView()V

    return-void
.end method

.method onLoadMoreBackground()V
    .locals 6

    .line 1613
    :try_start_0
    const-string v0, "sentByRBSK"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_2

    .line 1614
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1615
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getRBSKVisionImpairmentReferredMembers(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1616
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1617
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOffset:I

    .line 1618
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreRbskUi(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreRbskUi(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    .line 1625
    :cond_2
    const-string v0, "sentByCHO"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1626
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1627
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchString:Ljava/lang/String;

    .line 1626
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getNPCBMembersSentByCHO(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1628
    :cond_3
    const-string v0, "approvalSection"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1629
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1630
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchString:Ljava/lang/String;

    .line 1629
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getNPCBMembersForSpectsApproval(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1631
    :cond_4
    const-string v0, "fortyPlusMembers"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1632
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchFortyPlusMembers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1633
    :cond_5
    const-string v0, "sentByCHOForFollowUp"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1634
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchString:Ljava/lang/String;

    .line 1634
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getOnlineFollowUpNPCBMembers(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 1637
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1638
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1639
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreUi(Ljava/util/List;)V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    .line 1641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreUi(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1644
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 1645
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading more members: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 1607
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreBackground()V

    return-void
.end method

.method onLoadMoreRbskUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1674
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->convertRbskMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1676
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1677
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1678
    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1680
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1681
    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onLoadMoreUi(Ljava/util/List;)V
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

    .line 1661
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1662
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->convertMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1663
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1664
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1665
    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1667
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1668
    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1588
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1589
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1593
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1594
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setSubTitle(Ljava/lang/String;)V

    .line 1595
    const-string p1, "serviceSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1596
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 1597
    :cond_1
    const-string p1, "memberSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "rbskReferredScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1598
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setServiceSelectionScreen()V

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v2

    .line 1590
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setContentView(Landroid/view/View;)V

    .line 192
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->finish()V

    .line 198
    :cond_1
    const-string v0, "National Program for Blindness Control Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method openRbskReferredScreen()V
    .locals 4

    .line 447
    const-string v0, "rbskReferredScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->resetRbskReferredState()V

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 450
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->restoreDefaultFooterButton()V

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 453
    new-array v1, v0, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 454
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    const-string v3, "Search by name, school or village"

    invoke-direct {p0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createSearchRow(Ljava/lang/String;Ljava/lang/Runnable;[Lcom/google/android/material/textfield/TextInputLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    .line 455
    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskSearchInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 456
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 459
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->loadRbskReferredMembers(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method restoreDefaultFooterButton()V
    .locals 4

    .line 1458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    .line 1249
    :try_start_0
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    .line 1250
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchString:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1251
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 1253
    const-string v1, "fortyPlusMembers"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x1e

    if-eqz v1, :cond_0

    .line 1255
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->currentSearchType:Ljava/lang/String;

    .line 1256
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->searchFortyPlusMembers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 1257
    :cond_0
    const-string v1, "sentByCHO"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1258
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1258
    invoke-virtual {p2, v3, v1, v4, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getNPCBMembersSentByCHO(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 1260
    :cond_1
    const-string v1, "approvalSection"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1261
    invoke-virtual {p2, v3, v1, v4, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getNPCBMembersForSpectsApproval(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 1263
    :cond_2
    const-string v1, "sentByCHOForFollowUp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1264
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 1265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1264
    invoke-virtual {p2, v3, v1, v4, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getOnlineFollowUpNPCBMembers(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    .line 1267
    :cond_3
    :goto_0
    iget p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->offset:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 1268
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setMemberSelectionScreen(Ljava/lang/Boolean;I)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1270
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 1271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error retrieving members: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method screenRbskMappedMember(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V
    .locals 13

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 741
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x0

    .line 742
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FORTY_PLUS_MEMBERS"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 740
    invoke-virtual/range {v0 .. v12}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 743
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    if-eq p2, v1, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 747
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 752
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 756
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->getNpcbStatusMessage(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 759
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 762
    :cond_2
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 p2, -0x1

    .line 763
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 764
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    .line 765
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    const/4 p1, 0x0

    .line 766
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    .line 767
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 748
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 749
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 772
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    .line 773
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error finding RBSK-referred member: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method setFortyPlusDetailsScreen()V
    .locals 5

    .line 915
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    .line 916
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    const/4 v0, -0x1

    .line 917
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    const/4 v2, 0x0

    .line 918
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 919
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    .line 920
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 921
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 922
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 923
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->questionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 924
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 925
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    .line 926
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    .line 927
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->restoreDefaultFooterButton()V

    .line 928
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createCard(I)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v2, 0x41600000    # 14.0f

    .line 932
    sget v3, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->COLOR_TEXT:I

    const-string v4, "Search the member by"

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createLabel(Ljava/lang/String;FIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 934
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createTypeSelector()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 935
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 937
    new-array v1, v1, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 938
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->DETAILS_SEARCH_FIELD_LABELS:[Ljava/lang/String;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchTypeIndex:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda19;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-direct {p0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createSearchRow(Ljava/lang/String;Ljava/lang/Runnable;[Lcom/google/android/material/textfield/TextInputLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 940
    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 941
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->detailsSearchEditText:Landroid/widget/EditText;

    .line 944
    const-string v1, "Member not found after searching? You can register them on-site."

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createHintText(Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteHintView:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v3, 0x2

    .line 945
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->dpToPx(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 946
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteHintView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 948
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->applyDetailsSearchInput()V

    .line 949
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void
.end method

.method setMemberSelectionScreen(Ljava/lang/Boolean;I)V
    .locals 4

    .line 1308
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    if-eq p2, v0, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void

    .line 1312
    :cond_0
    const-string p2, "memberSelectionScreen"

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    .line 1315
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p2, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1318
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz p2, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1321
    :cond_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->questionTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p2, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1324
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p2, :cond_4

    .line 1325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1327
    :cond_4
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 1328
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1329
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->notFoundCard:Landroid/widget/LinearLayout;

    .line 1331
    :cond_5
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    if-eqz p2, :cond_6

    .line 1332
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1333
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->registerOnsiteButton:Landroid/widget/Button;

    .line 1336
    :cond_6
    const-string p2, "fortyPlusMembers"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1337
    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x8

    if-eqz p1, :cond_8

    .line 1338
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteHintView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v1, :cond_8

    .line 1340
    invoke-virtual {v1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1342
    :cond_8
    const-string v1, "sentByCHO"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1343
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz p1, :cond_9

    .line 1346
    const-string v2, "Tap the member to select, then press Next."

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createHintText(Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    goto :goto_1

    .line 1347
    :cond_9
    const-string v2, "Select Member"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->questionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1348
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_a

    .line 1352
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addRegisterOnsiteButtonIfApplicable()V

    .line 1355
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->convertMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz v1, :cond_b

    .line 1363
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    goto :goto_2

    .line 1370
    :cond_b
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    .line 1373
    :goto_2
    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p0, p1, v3, v2, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1375
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1376
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->restoreDefaultFooterButton()V

    if-eqz v1, :cond_c

    .line 1378
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 1380
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    const-string p2, "Next"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 1385
    :cond_d
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->restoreDefaultFooterButton()V

    if-eqz p1, :cond_e

    .line 1389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1390
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addNotFoundCard()V

    goto :goto_3

    .line 1392
    :cond_e
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1393
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1394
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    const-string p2, "Okay"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1399
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void
.end method

.method setRbskReferredScreen(I)V
    .locals 2

    .line 494
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    if-eq p1, v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 500
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 502
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskLegendRow:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 504
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskLegendRow:Landroid/widget/LinearLayout;

    .line 506
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskTitleRow:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 508
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskTitleRow:Landroid/widget/LinearLayout;

    .line 510
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskEmptyView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_4

    .line 511
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 512
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskEmptyView:Lcom/google/android/material/textview/MaterialTextView;

    .line 515
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 516
    const-string p1, "Referred by RBSK"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 517
    const-string v0, "Children RBSK teams referred for vision impairment or color blindness, or who wear spectacles, in your area, who have not been screened yet. Tap a child to screen them.\n\nIcons beside a child (a child can have more than one):\n\u25cf Blue eye: Vision impairment\n\u25cf Green palette: Color blindness\n\u25cf Orange glasses: Wearing spectacles"

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->buildTitleRowWithInfo(Lcom/google/android/material/textview/MaterialTextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskTitleRow:Landroid/widget/LinearLayout;

    .line 518
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->buildRbskLegendRow()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskLegendRow:Landroid/widget/LinearLayout;

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredMembers:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->convertRbskMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 523
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda23;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    .line 528
    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_three_item_npcb:I

    invoke-static {p0, p1, v1, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 532
    :cond_5
    const-string p1, "No children referred by RBSK in your area."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskEmptyView:Lcom/google/android/material/textview/MaterialTextView;

    .line 533
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void
.end method

.method setServiceSelectionScreen()V
    .locals 4

    .line 244
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->activeRequestId:I

    const/4 v0, -0x1

    .line 245
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedServiceIndex:I

    const/4 v1, 0x0

    .line 246
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedService:Ljava/lang/String;

    const/4 v2, 0x0

    .line 247
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onsiteRegistrationMode:Z

    .line 248
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskOnsiteRegistration:Z

    .line 249
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskScreeningStudentDetailsId:Ljava/lang/Integer;

    .line 250
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->rbskReferredScreening:Z

    .line 253
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMemberIndex:I

    .line 254
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->memberDataBeans:Ljava/util/List;

    .line 256
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->resetRbskReferredState()V

    .line 257
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->restoreDefaultFooterButton()V

    .line 258
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screen:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 261
    const-string v0, "Select the type of Service"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v3, "Walk-In Members"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v3, "Referrals sent by CHO"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v3, "Beneficiary for Follow up"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v3, "Approval Section"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v3, "Referred by RBSK"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V

    .line 275
    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    invoke-static {p0, v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->hideProcessDialog()V

    return-void
.end method

.method showTechoIdResult(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1576
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Techo ID: "

    .line 1578
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nPlease note this down and give it to the patient - they will need it for any future visit or treatment."

    .line 1579
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x69

    .line 1577
    const-string v2, "Techo ID generated"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 1582
    :cond_0
    const-string p1, "Saved. The Techo ID will appear in your Work Log once this record finishes syncing."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
