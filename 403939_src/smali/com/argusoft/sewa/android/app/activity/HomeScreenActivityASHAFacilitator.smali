.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityASHAFacilitator.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final images:[I


# instance fields
.field private final items:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->incentive:I

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms_report:I

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->images:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, "LMS Progress Report"

    const-string v2, "Work Log"

    const-string v3, "Asha Incentive"

    const-string v4, "ILA Baseline survey"

    const-string v5, "Learning Management System"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->items:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;)Ljava/util/LinkedList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->items:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->changeActivity(Ljava/lang/String;)V

    return-void
.end method

.method private changeActivity(Ljava/lang/String;)V
    .locals 2

    .line 91
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Work Log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "LMS Progress Report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "Learning Management System"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "ILA Baseline survey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "Asha Incentive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 127
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 122
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 117
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getBaselineModuleCourseIds()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 103
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 106
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    const-string v1, "ILA_BASELINE"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForFormType(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 107
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 111
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 96
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5be717ca -> :sswitch_4
        -0x48acab2d -> :sswitch_3
        -0x48aaabb6 -> :sswitch_2
        -0x296dfea7 -> :sswitch_1
        0x5d5f1b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .line 55
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->setContentView(I)V

    .line 56
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 57
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 58
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->setActionBarDesign()V

    .line 59
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->setNavigationView()V

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->items:Ljava/util/LinkedList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->images:[I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$changeActivity$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHAFacilitator()V
    .locals 1

    .line 104
    const-string v0, "You have already completed your baseline survey"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$changeActivity$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHAFacilitator()V
    .locals 1

    .line 108
    const-string v0, "Your baseline survey is filled and pending sync"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 78
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;)V

    .line 84
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 85
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 50
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->context:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->init()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 65
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 66
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 67
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;I)V

    .line 73
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;->start()V

    return-void
.end method
