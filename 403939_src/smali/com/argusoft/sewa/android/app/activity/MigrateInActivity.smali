.class public Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY:J = 0x3e8L

.field private static final FAMILY_QUESTION_SCREEN:Ljava/lang/String; = "familyQuestionScreen"

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final FIRST_QUESTION_SCREEN:Ljava/lang/String; = "firstQuestionScreen"

.field private static final LOCATION_QUESTION_SCREEN:Ljava/lang/String; = "locationQuestionScreen"

.field private static final MEMBER_QUESTION_SCREEN:Ljava/lang/String; = "memberQuestionScreen"

.field private static final RADIO_BUTTON_ID_NILL:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
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

.field private ashaAreaTextView:Landroid/widget/TextView;

.field private bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private blockSpinner:Landroid/widget/Spinner;

.field private blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private districtSpinner:Landroid/widget/Spinner;

.field private districts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private dobDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private dobDatePicker:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private fhwNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private genderRadioGroup:Landroid/widget/RadioGroup;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field private listView:Landroid/widget/ListView;

.field private lmpDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private lmpDatePicker:Landroid/widget/LinearLayout;

.field private lmpQuestionView:Lcom/google/android/material/textview/MaterialTextView;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Lcom/google/android/material/button/MaterialButton;

.field private noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private pregnantQuestionView:Lcom/google/android/material/textview/MaterialTextView;

.field private pregnantRadioGroup:Landroid/widget/RadioGroup;

.field private regionSpinner:Landroid/widget/Spinner;

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private screenName:Ljava/lang/String;

.field private searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchedFamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAshaAreaIndex:I

.field private selectedDistrict:Ljava/lang/Long;

.field private selectedFamilyindex:I

.field private selectedRegion:Ljava/lang/Long;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

.field private timer:Ljava/util/Timer;

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private villageSpinner:Landroid/widget/Spinner;

.field private villageTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NILL:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedRegion:Ljava/lang/Long;

    .line 105
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedDistrict:Ljava/lang/Long;

    .line 138
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedFamilyindex:I

    .line 141
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedAshaAreaIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/lang/Long;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedRegion:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedRegion:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDatePicker:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/lang/Integer;
    .locals 1

    .line 70
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/Timer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/ListView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->listView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchedFamily:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->noFamilyTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedFamilyindex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$2802(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedAshaAreaIndex:I

    return p1
.end method

.method static synthetic access$2900(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->saveMigrationIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/lang/Long;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedDistrict:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedDistrict:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blocks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blocks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/Integer;
    .locals 1

    .line 70
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Integer;
    .locals 1

    .line 70
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NILL:Ljava/lang/Integer;

    return-object v0
.end method

.method private addAshaAreaSelectionSpinner()V
    .locals 5

    .line 951
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 952
    const-string v0, "Select Asha Area for beneficiary"

    .line 953
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 952
    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaTextView:Landroid/widget/TextView;

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 957
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 958
    const-string v3, "-Select-"

    aput-object v3, v0, v2

    .line 960
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 961
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/2addr v3, v1

    goto :goto_0

    .line 964
    :cond_1
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedAshaAreaIndex:I

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 965
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 976
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addBlockSpinner(Ljava/lang/Long;)V
    .locals 5

    .line 494
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blockSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blocks:Ljava/util/List;

    .line 496
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/String;

    .line 497
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 499
    const-string v1, "-Select-"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 500
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 501
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    add-int/2addr v3, v0

    goto :goto_0

    .line 505
    :cond_0
    const-string v0, "Select District"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blockSpinner:Landroid/widget/Spinner;

    .line 510
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Block"

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;)V
    .locals 5

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districtSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districts:Ljava/util/List;

    .line 445
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 448
    const-string v1, "-Select-"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 449
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 450
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    add-int/2addr v3, v0

    goto :goto_0

    .line 454
    :cond_0
    const-string v1, "No location available"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 456
    :cond_1
    invoke-static {p0, p1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districtSpinner:Landroid/widget/Spinner;

    .line 458
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 489
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "District"

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSpinner()V
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regionSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regions:Ljava/util/List;

    .line 394
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 395
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 397
    const-string v2, "-Select-"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 398
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 399
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    .line 403
    :cond_0
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 405
    :cond_1
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regionSpinner:Landroid/widget/Spinner;

    .line 407
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Region"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSearchTextBoxForFamily()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 794
    const-string v0, "Search Family"

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private addVillageSelectionSpinner()V
    .locals 6

    .line 905
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 906
    const-string v0, "Select Village for beneficiary"

    .line 907
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 906
    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageTextView:Landroid/widget/TextView;

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 911
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageList:Ljava/util/List;

    .line 913
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 914
    const-string v2, "-Select-"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 916
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 917
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 921
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 922
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 942
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedAshaAreaIndex:I

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addAshaAreaSelectionSpinner()V

    :cond_3
    return-void
.end method

.method private checkValidationForMemberQuestionScreen()Ljava/lang/Boolean;
    .locals 6

    .line 680
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 683
    :goto_0
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v3, "mobileNumber"

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 686
    invoke-static {v0, v2, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 689
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter first name"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 691
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 695
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 696
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter last name"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 701
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter gender"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_4

    .line 706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter DOB"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 707
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 710
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 711
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "^\\d{16}$"

    .line 712
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_5

    .line 713
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Account number must contain 16 digits."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 714
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 717
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 718
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 719
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "A"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 720
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Health Id must start with \"A\""

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 724
    :cond_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v4, 0xb

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 725
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 726
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xa

    if-lt v1, v5, :cond_7

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 727
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 728
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Health Id must contain 10 or 11 digits"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 729
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz v0, :cond_9

    .line 733
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 737
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 738
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 739
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_a

    .line 740
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "IFSC code is not correct"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 741
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 744
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_d

    .line 745
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, -0xf

    .line 746
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 747
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 748
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 749
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Is the beneficiary pregnant?"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 750
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 753
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_d

    .line 754
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter LMP date"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 755
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 758
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 759
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry, this girl cannot be marked as pregnant"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 760
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 765
    :cond_d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private finishActivity()V
    .locals 5

    .line 991
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    .line 1004
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this Migration form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1007
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private getRadioGroupYesNo()Landroid/widget/RadioGroup;
    .locals 3

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 215
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 173
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 176
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    .line 179
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setBodyDetail()V

    return-void
.end method

.method private saveMigrationIn()V
    .locals 6

    .line 1011
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;-><init>()V

    .line 1013
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setFirstname(Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1015
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setMiddleName(Ljava/lang/String;)V

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setLastName(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1020
    const-string v1, "F"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setGender(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1022
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setPregnant(Ljava/lang/Boolean;)V

    .line 1023
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setLmp(Ljava/lang/Long;)V

    goto :goto_0

    .line 1025
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setPregnant(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1028
    :cond_2
    const-string v1, "M"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setGender(Ljava/lang/String;)V

    .line 1030
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setDob(Ljava/lang/Long;)V

    .line 1031
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1032
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1033
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setHealthId(Ljava/lang/String;)V

    .line 1035
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1036
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1037
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setPhoneNumber(Ljava/lang/String;)V

    .line 1039
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1040
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1041
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setBankAccountNumber(Ljava/lang/String;)V

    .line 1043
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1044
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1045
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setIfscCode(Ljava/lang/String;)V

    .line 1048
    :cond_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_7

    .line 1049
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 1050
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blocks:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setNearestLocId(Ljava/lang/Long;)V

    .line 1051
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setVillageName(Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setFhwOrAshaName(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1054
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setFhwOrAshaPhone(Ljava/lang/String;)V

    goto :goto_1

    .line 1057
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 1060
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 1061
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setStayingWithFamily(Ljava/lang/Boolean;)V

    .line 1062
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchedFamily:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedFamilyindex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setFamilyId(Ljava/lang/Long;)V

    goto :goto_2

    .line 1064
    :cond_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setStayingWithFamily(Ljava/lang/Boolean;)V

    .line 1065
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageList:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setVillageId(Ljava/lang/Long;)V

    .line 1066
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaList:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setAreaId(Ljava/lang/Long;)V

    .line 1069
    :goto_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->setReportedOn(Ljava/lang/Long;)V

    .line 1071
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createMigrationIn(Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;)V

    return-void
.end method

.method private setBodyDetail()V
    .locals 2

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setMemberQuestionsScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setContentView(Landroid/view/View;)V

    .line 188
    throw v0
.end method

.method private setFamilyQuestionScreen()V
    .locals 4

    .line 769
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 770
    const-string v0, "familyQuestionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 772
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Is the beneficiary staying with a family in the village?"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 773
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFamilySelectionScreen()V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 781
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please search and select family for the beneficiary"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 784
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addSearchTextBoxForFamily()V

    .line 785
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 786
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchedFamily:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 788
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 980
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 981
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 982
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    .line 985
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 986
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    .line 987
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 986
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFirstQuestionScreen()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    const-string v0, "firstQuestionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "Has the beneficiary migrated from Gujarat?"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setLocationQuestionScreen()V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 364
    const-string v0, "locationQuestionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Enter location details from where the beneficiary has migrated"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addRegionSpinner()V

    .line 369
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedRegion:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addDistrictSpinner(Ljava/lang/Long;)V

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedDistrict:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addBlockSpinner(Ljava/lang/Long;)V

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "Village name"

    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v4, 0x3e9

    const/16 v5, 0x32

    invoke-static {v0, v3, v4, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v4, "FHW or ASHA name"

    invoke-static {v2, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v3, 0x3ea

    const/16 v5, 0x64

    invoke-static {v0, v4, v3, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v3, "FHW or ASHA phone number"

    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/16 v4, 0x3eb

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMemberDetails()V
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    .line 656
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 657
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 663
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 669
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 671
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setMemberQuestionsScreen()V
    .locals 9

    .line 515
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 516
    const-string v0, "memberQuestionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Migrated In a Beneficiary"

    .line 519
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "First name"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    const/16 v2, 0x32

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v6, 0x3ec

    invoke-static {v0, v4, v6, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->firstNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    const-string v7, "Middle name"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 527
    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v4, 0x3ed

    invoke-static {v0, v7, v4, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->middleNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    const-string v7, "Last Name"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 534
    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v4, 0x3ee

    invoke-static {v0, v7, v4, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lastNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Gender"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_3

    .line 543
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    .line 544
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Male"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 545
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Female"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Transgender"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_NILL:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->genderRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Date of birth"

    .line 575
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const-string v1, "isFutureDate"

    if-nez v0, :cond_4

    .line 577
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 578
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v3, "Date of birth is not correct"

    invoke-direct {v2, v1, v3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const/16 v0, 0x3f2

    .line 581
    invoke-static {p0, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDatePicker:Landroid/widget/LinearLayout;

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->dobDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v3, "Enter Health Id"

    .line 586
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-static {v5, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v2, 0x1001

    const/16 v3, 0xb

    if-nez v0, :cond_5

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v4, "Health Id"

    const/16 v6, 0x3ef

    invoke-static {v0, v4, v6, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 591
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->healthIdEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v6, "Enter Phone number"

    .line 594
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 593
    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x2

    if-nez v0, :cond_6

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v6, 0x3f1

    const/16 v7, 0xa

    const-string v8, "Phone number"

    invoke-static {v0, v8, v6, v7, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 598
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->phoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v7, "Enter Bank account number"

    .line 601
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 600
    invoke-static {v5, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_7

    .line 603
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const/16 v6, 0x3f4

    const/16 v7, 0x10

    const-string v8, "Bank account number"

    invoke-static {v0, v8, v6, v7, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 605
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bankAccountEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v6, "Enter IFSC code"

    .line 608
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 607
    invoke-static {v5, v5, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_8

    .line 610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v4, "IFSC code"

    const/16 v6, 0x3f5

    invoke-static {v0, v4, v6, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 613
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ifscEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_9

    .line 616
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Is the beneficiary pregnant?"

    invoke-static {v5, v5, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    .line 618
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_a

    .line 619
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->getRadioGroupYesNo()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->pregnantRadioGroup:Landroid/widget/RadioGroup;

    .line 620
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 637
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_b

    .line 638
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Enter LMP date"

    .line 639
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-static {v5, v5, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpQuestionView:Lcom/google/android/material/textview/MaterialTextView;

    .line 641
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    if-nez v0, :cond_c

    .line 642
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 643
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v3, "LMP date is not correct"

    invoke-direct {v2, v1, v3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v2, "isDateIn-Sub-0-9-0"

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v2, "isDateOut-Sub-0-0-28"

    const-string v3, "LMP date must be within 28 days to 9 months from the current day"

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const/16 v0, 0x3f3

    .line 647
    invoke-static {p0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->lmpDatePicker:Landroid/widget/LinearLayout;

    .line 650
    :cond_c
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setMemberDetails()V

    return-void
.end method

.method private setVillageSelectionScreen()V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 900
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    .line 901
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addVillageSelectionSpinner()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 193
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    .line 205
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Migration?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 208
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    const-string v4, "finalScreen"

    const-string v6, "familySelectionScreen"

    const/4 v7, 0x4

    const-string v8, "villageSelectionScreen"

    const/4 v9, 0x3

    const-string v10, "familyQuestionScreen"

    const/4 v11, 0x2

    const-string v12, "firstQuestionScreen"

    const/4 v13, 0x1

    const-string v14, "memberQuestionScreen"

    const/4 v15, 0x0

    const-string v3, "locationQuestionScreen"

    const/4 v5, -0x1

    if-ne v1, v2, :cond_15

    .line 221
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_1
    const-string v1, "Please Select an option"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 304
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->finishActivity()V

    goto/16 :goto_5

    .line 280
    :pswitch_1
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchedFamily:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 284
    :cond_7
    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->selectedFamilyindex:I

    if-eq v1, v5, :cond_8

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFinalScreen()V

    goto/16 :goto_5

    .line 287
    :cond_8
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please select a family from the list"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 281
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please search for a family"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 292
    :pswitch_2
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_a

    .line 293
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please select village for beneficiary"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 296
    :cond_a
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_b

    .line 297
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please select ASHA area for beneficiary"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 300
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFinalScreen()V

    goto/16 :goto_5

    .line 268
    :pswitch_3
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-eq v2, v5, :cond_d

    .line 269
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_c

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilySelectionScreen()V

    goto/16 :goto_5

    .line 272
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setVillageSelectionScreen()V

    goto/16 :goto_5

    .line 275
    :cond_d
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 229
    :pswitch_4
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-eq v2, v5, :cond_f

    .line 230
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_e

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setLocationQuestionScreen()V

    goto/16 :goto_5

    .line 233
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilyQuestionScreen()V

    goto/16 :goto_5

    .line 236
    :cond_f
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 223
    :pswitch_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->checkValidationForMemberQuestionScreen()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFirstQuestionScreen()V

    goto/16 :goto_5

    .line 241
    :pswitch_6
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->regionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_10

    .line 242
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please select region"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 245
    :cond_10
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_11

    .line 246
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please select district"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 249
    :cond_11
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_12

    .line 250
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please select block"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 253
    :cond_12
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->villageNameEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 254
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 255
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter village name"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 258
    :cond_13
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 259
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhwPhoneEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 260
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_14

    .line 261
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    const-string v2, "FHW Phone Number is not correct"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 264
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilyQuestionScreen()V

    goto/16 :goto_5

    .line 310
    :cond_15
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :sswitch_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_3

    :cond_16
    const/4 v3, 0x6

    goto :goto_4

    :sswitch_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_3

    :cond_17
    const/4 v3, 0x5

    goto :goto_4

    :sswitch_9
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_3

    :cond_18
    const/4 v3, 0x4

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3

    :cond_19
    const/4 v3, 0x3

    goto :goto_4

    :sswitch_b
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3

    :cond_1a
    const/4 v3, 0x2

    goto :goto_4

    :sswitch_c
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_3

    :cond_1b
    const/4 v3, 0x1

    goto :goto_4

    :sswitch_d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_3

    :cond_1c
    const/4 v3, 0x0

    :goto_4
    packed-switch v3, :pswitch_data_1

    goto :goto_5

    .line 338
    :pswitch_7
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "Next"

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilySelectionScreen()V

    goto :goto_5

    .line 342
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setVillageSelectionScreen()V

    goto :goto_5

    .line 334
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilyQuestionScreen()V

    goto :goto_5

    .line 325
    :pswitch_9
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setLocationQuestionScreen()V

    goto :goto_5

    .line 328
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFirstQuestionScreen()V

    goto :goto_5

    .line 316
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setMemberQuestionsScreen()V

    goto :goto_5

    .line 312
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->onBackPressed()V

    goto :goto_5

    .line 321
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFirstQuestionScreen()V

    :cond_1f
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbd0f9 -> :sswitch_6
        -0x67645ad4 -> :sswitch_5
        -0x379af13e -> :sswitch_4
        -0x1ed8b38a -> :sswitch_3
        -0x13a69534 -> :sswitch_2
        -0xa1992ec -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76bbd0f9 -> :sswitch_d
        -0x67645ad4 -> :sswitch_c
        -0x379af13e -> :sswitch_b
        -0x1ed8b38a -> :sswitch_a
        -0x13a69534 -> :sswitch_9
        -0xa1992ec -> :sswitch_8
        0x7b63fd82 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->context:Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 151
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1076
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1077
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1082
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_a

    .line 1083
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "familyQuestionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "firstQuestionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "memberQuestionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "locationQuestionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1111
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->stayingWithFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1113
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilySelectionScreen()V

    goto :goto_2

    .line 1115
    :cond_8
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setVillageSelectionScreen()V

    goto :goto_2

    .line 1107
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFamilyQuestionScreen()V

    goto :goto_2

    .line 1098
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migratedFromGujaratRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1099
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setLocationQuestionScreen()V

    goto :goto_2

    .line 1101
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFirstQuestionScreen()V

    goto :goto_2

    .line 1089
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setMemberQuestionsScreen()V

    goto :goto_2

    .line 1085
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->onBackPressed()V

    goto :goto_2

    .line 1094
    :pswitch_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setFirstQuestionScreen()V

    :cond_a
    :goto_2
    return v2

    .line 1078
    :cond_b
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbd0f9 -> :sswitch_6
        -0x67645ad4 -> :sswitch_5
        -0x379af13e -> :sswitch_4
        -0x1ed8b38a -> :sswitch_3
        -0x13a69534 -> :sswitch_2
        -0xa1992ec -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setContentView(Landroid/view/View;)V

    .line 161
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->finish()V

    .line 168
    :cond_1
    const-string v0, "Migration"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveFamilyListBySearchForMigration(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->searchedFamily:Ljava/util/List;

    .line 849
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
