.class public Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "PhoneNumberVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final PHONE_UPDATE_SCREEN:Ljava/lang/String; = "phoneUpdateScreen"

.field private static final RADIO_BUTTON_SUBMIT:I = 0x1f5

.field private static final RADIO_BUTTON_VERIFY:I = 0x1f6

.field private static final VERIFY_SCREEN:Ljava/lang/String; = "verifyScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private currentLatitude:Ljava/lang/String;

.field private currentLongitude:Ljava/lang/String;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private limit:J

.field locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private mobileStartDate:Ljava/util/Date;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field private selectedSubCenter:Ljava/lang/Integer;

.field private selectedVillage:Ljava/lang/Integer;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private subCenterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private subCenterQue:Lcom/google/android/material/textview/MaterialTextView;

.field private subCenterSpinner:Landroid/widget/Spinner;

.field private timer:Ljava/util/Timer;

.field private verifyRadioGroup:Landroid/widget/RadioGroup;

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageQue:Lcom/google/android/material/textview/MaterialTextView;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->timer:Ljava/util/Timer;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberDataBeans:Ljava/util/List;

    const-wide/16 v0, 0x1e

    .line 113
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->limit:J

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Ljava/lang/Integer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedSubCenter:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedSubCenter:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Ljava/util/Timer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMemberIndex:I

    return p1
.end method

.method private addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 381
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private generateAnswerString()Ljava/lang/String;
    .locals 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latitude!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->currentLatitude:Ljava/lang/String;

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~longitude!"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->currentLongitude:Ljava/lang/String;

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~mobileStartDate!"

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->mobileStartDate:Ljava/util/Date;

    .line 676
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "~mobileEndDate!"

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 680
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "~memberId!"

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 684
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~phoneNumber!"

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 691
    :goto_0
    const-string v3, " "

    .line 692
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~"

    .line 693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showProcessDialog()V

    .line 146
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 147
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setContentView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 149
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    .line 152
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setBodyDetail()V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 657
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 660
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Your form is complete."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setGps()V
    .locals 2

    .line 211
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 216
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->currentLatitude:Ljava/lang/String;

    .line 217
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->currentLongitude:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/PointInPolygon;->coordinateInsidePolygon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    const-string v0, "You are filling this form from a region out of your area of intervention. Please be present in your AOI to fill the form."

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->showAlertAndExit(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMemberDetailsScreen()V
    .locals 9

    .line 475
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showProcessDialog()V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 477
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 482
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v4, "Member Details"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v4, "Name"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v4, "Health Id"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v4, "Family ID"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "Date of birth"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "Age"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 501
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 502
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 503
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 504
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v6

    .line 505
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v6, v2

    .line 506
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v7, "Age at Wedding"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v5, v4, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " years"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_7

    .line 512
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "Address"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 518
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 520
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v7, "Religion"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    :cond_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 526
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 528
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v7, "Caste"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 534
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "BPL"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 536
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "Family is BPL"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 538
    :cond_5
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "Family is not BPL"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 543
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaInfoByAreaId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 545
    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 546
    const-string v4, "mobileNumber"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v7, "Asha Name & Phone"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v2, "Number of living children"

    if-eqz v0, :cond_8

    .line 555
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v5, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6, v4, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 561
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v8, "Number of boys"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v5, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6, v4, v4, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 567
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x5

    if-eqz v0, :cond_b

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v4, "LMP date"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/util/Date;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 576
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x119

    .line 577
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 578
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v6, "EDD"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 583
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v4, "Pregnancy Registration Date"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/util/Date;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0x5a

    .line 588
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 589
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v3, "Early registration"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 590
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 591
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 593
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 598
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Blood group"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 603
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Last weight recorded"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Kgs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    :cond_f
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method private setPhoneNumberUpdateScreen()V
    .locals 5

    .line 610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 611
    const-string v0, "phoneUpdateScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 617
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPhoneVerified()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPhoneVerified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "Enter phone number \u2714\ufe0f"

    goto :goto_0

    .line 622
    :cond_0
    const-string v0, "Enter phone number"

    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v3, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const-string v3, "Phone number"

    const/16 v4, 0x3e9

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 627
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setVerifyScreen()V
    .locals 5

    .line 636
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 637
    const-string v0, "verifyScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 643
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Do you want to submit or review the data?"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    .line 647
    const-string v0, "I want to submit the data"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    const-string v0, "I want to verify the data"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showAlertAndExit(Ljava/lang/String;)V
    .locals 1

    .line 194
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addSubCenterSelectionSpinner()V
    .locals 5

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterQue:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v1, :cond_0

    .line 323
    const-string v1, "Select Sub-center / ANM Area"

    invoke-static {v0, v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterQue:Lcom/google/android/material/textview/MaterialTextView;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

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

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 330
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 334
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterSpinner:Landroid/widget/Spinner;

    .line 335
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterQue:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageQue:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 360
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 362
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 364
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 365
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageQue:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v2, :cond_1

    .line 370
    const-string v2, "Select Village"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageQue:Lcom/google/android/material/textview/MaterialTextView;

    :cond_1
    const/4 v0, 0x3

    .line 373
    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageQue:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 226
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    .line 228
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMemberIndex:I

    .line 229
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setGps()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 174
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)V

    .line 187
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Phone Number Verification?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 190
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "finalScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "memberDetailsScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "memberSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "villageSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "phoneUpdateScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "verifyScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 301
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showProcessDialog()V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 304
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->generateAnswerString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->storeFhsrPhoneVerificationForm(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addSearchTextBox()V

    .line 309
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 263
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setPhoneNumberUpdateScreen()V

    goto/16 :goto_3

    .line 252
    :pswitch_2
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMemberIndex:I

    if-ne v0, v3, :cond_6

    .line 253
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please Select a Member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->mobileStartDate:Ljava/util/Date;

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberDataBeans:Ljava/util/List;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMemberIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 258
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 259
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setMemberDetailsScreen()V

    goto/16 :goto_3

    .line 239
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentlyDownloadingFamilyData:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    const-string p1, "Currently downloading family data. Please wait for sometime and do not disconnect the internet."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showAlertAndExit(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showProcessDialog()V

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedVillage:Ljava/lang/Integer;

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addSearchTextBox()V

    .line 248
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 268
    :pswitch_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->phoneNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v4, "mobileNumber"

    invoke-direct {v3, v4, p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v4, "checkNumberFormatException"

    invoke-direct {v3, v4, p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v1, v2, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 278
    :cond_9
    const-string p1, "Please enter mobile number"

    :goto_2
    if-eqz p1, :cond_a

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 283
    :cond_a
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setVerifyScreen()V

    goto :goto_3

    .line 288
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please Select an option"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_c

    .line 293
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setFinalScreen()V

    .line 295
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->verifyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_d

    .line 296
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setMemberDetailsScreen()V

    :cond_d
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2548c9bb -> :sswitch_5
        -0x247ab8dd -> :sswitch_4
        -0x13a69534 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x3eb994d4 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setGps()V

    .line 124
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 767
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedVillage:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->searchString:Ljava/lang/String;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForPhoneVerificationByFhsr(Ljava/lang/Long;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 768
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    .line 769
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 762
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 775
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 777
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 778
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

    .line 780
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_1

    .line 782
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 700
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 701
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 705
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_9

    .line 706
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "phoneUpdateScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "verifyScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 750
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setVerifyScreen()V

    goto/16 :goto_1

    .line 733
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showProcessDialog()V

    .line 734
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 p1, 0x0

    .line 735
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addSearchTextBox()V

    .line 738
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 713
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 714
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 715
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 716
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v0, "Data not synced properly. Please refresh."

    .line 717
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 718
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 726
    :cond_8
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 727
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedSubCenter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    .line 728
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addSubCenterSelectionSpinner()V

    goto :goto_1

    .line 708
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 742
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setMemberDetailsScreen()V

    goto :goto_1

    .line 746
    :pswitch_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setPhoneNumberUpdateScreen()V

    :cond_9
    :goto_1
    return v1

    .line 702
    :cond_a
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x2548c9bb -> :sswitch_5
        -0x247ab8dd -> :sswitch_4
        -0x13a69534 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x3eb994d4 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setContentView(Landroid/view/View;)V

    .line 134
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->finish()V

    .line 141
    :cond_1
    const-string v0, "Phone Number Verification"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 433
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->searchString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 434
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    const/4 v0, -0x1

    .line 435
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedMemberIndex:I

    .line 436
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedVillage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->limit:J

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForPhoneVerificationByFhsr(Ljava/lang/Long;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberDataBeans:Ljava/util/List;

    .line 437
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->offset:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 438
    :goto_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->setMemberSelectionScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveSubCenterListForFHSR()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    .line 158
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->selectedSubCenter:Ljava/lang/Integer;

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    .line 162
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->subCenterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->villageList:Ljava/util/List;

    .line 167
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->addSubCenterSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setMemberSelectionScreen(Z)V
    .locals 10

    .line 443
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->screen:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberDataBeans:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    const-string v2, "Select Family"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 450
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 452
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

    .line 454
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)V

    .line 460
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 461
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 464
    :cond_1
    const-string v0, "No members found in this village."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->memberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 465
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p1, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->hideProcessDialog()V

    :cond_2
    return-void
.end method
