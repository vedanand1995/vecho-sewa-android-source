.class public Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "DueListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DUE_LIST_SCREEN:Ljava/lang/String; = "dueListScreen"

.field private static final LOCATION_SELECTION_SCREEN:Ljava/lang/String; = "locationSelectionScreen"


# instance fields
.field private ancFragment:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;

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

.field private csFragment:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field private fromDate:Ljava/lang/String;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private monthDropdown:Landroid/widget/AutoCompleteTextView;

.field private months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private pncFragment:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

.field private screenName:Ljava/lang/String;

.field private selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedAreaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMonthText:Ljava/lang/String;

.field private selectedVillageId:Ljava/lang/Integer;

.field private selectedVillageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private toDate:Ljava/lang/String;

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedAreaIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedMonthText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)Ljava/lang/Integer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->showProcessDialog()V

    .line 97
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setContentView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->footerView:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->nextButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setBodyDetail()V

    return-void
.end method

.method private notifyFragmentsWithDates(Ljava/lang/String;)V
    .locals 5

    .line 252
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    const/4 v2, 0x5

    .line 256
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 257
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fromDate:Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 260
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->toDate:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ancFragment:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fromDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0, v1, p1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->onDateRangeSelected(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->pncFragment:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fromDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->toDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;->onDateRangeSelected(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->csFragment:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fromDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->toDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;->onDateRangeSelected(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTabsData()V
    .locals 4

    .line 189
    const-string v0, "dueListScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 191
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->context:Landroid/content/Context;

    const/16 v2, 0x2711

    const/16 v3, 0x10

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 195
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->activity_due_list:I

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->month_dropdown:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->monthDropdown:Landroid/widget/AutoCompleteTextView;

    .line 204
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->cohort_tabs:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 205
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->cohort_view_pager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 207
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setupMonthDropdown()V

    .line 208
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setupViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 211
    const-string v0, "Due List"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setSubTitle(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->monthDropdown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->notifyFragmentsWithDates(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->hideProcessDialog()V

    return-void
.end method

.method private setupMonthDropdown()V
    .locals 7

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->months:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 229
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedMonthText:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 232
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->months:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 233
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000a

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->months:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 241
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->monthDropdown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->monthDropdown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->monthDropdown:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setupViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3

    .line 272
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListPagerAdapter;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 274
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->builder()Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;

    move-result-object v1

    const-string v2, "ANC list"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;->argText(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;->build()Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ancFragment:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;

    .line 275
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_;->builder()Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$FragmentBuilder_;

    move-result-object v1

    const-string v2, "PNC list"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$FragmentBuilder_;->argText(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$FragmentBuilder_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment_$FragmentBuilder_;->build()Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->pncFragment:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    .line 276
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment_;->builder()Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment_$FragmentBuilder_;

    move-result-object v1

    const-string v2, "Under 5 list"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment_$FragmentBuilder_;->argText(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment_$FragmentBuilder_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment_$FragmentBuilder_;->build()Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->csFragment:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    .line 278
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ancFragment:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;

    const-string v2, "ANC"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->pncFragment:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    const-string v2, "PNC"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->csFragment:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    const-string v2, "VACCINES"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v0, 0x3

    .line 283
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 136
    const-string v0, "locationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 139
    const-string v0, "Select Asha Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 143
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 145
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 146
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 149
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 153
    :cond_1
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->hideProcessDialog()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    .line 160
    const-string v0, "locationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 164
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 165
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    add-int/lit8 v5, v1, 0x1

    .line 166
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 168
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 169
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$setBodyDetail$0$com-argusoft-sewa-android-app-activity-DueList-DueListActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setupMonthDropdown$1$com-argusoft-sewa-android-app-activity-DueList-DueListActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->months:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedMonthText:Ljava/lang/String;

    .line 246
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->notifyFragmentsWithDates(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_7

    .line 289
    const-string p1, "locationSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 290
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->showProcessDialog()V

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    :goto_0
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 299
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 300
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 302
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_6

    .line 310
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 313
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 321
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 323
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setTabsData()V

    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    .line 350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "dueListScreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "locationSelectionScreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->finish()V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 351
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->navigateToHomeScreen(Z)V

    return v1

    .line 361
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 334
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setContentView(Landroid/view/View;)V

    .line 338
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->finish()V

    .line 344
    :cond_1
    const-string v0, "Due List"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->setSubTitle(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "locationSelectionScreen"

    if-eqz v0, :cond_0

    .line 113
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Data not synced properly. Please refresh."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)V

    .line 116
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->hideProcessDialog()V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->villageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->selectedVillageId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->ashaAreaList:Ljava/util/List;

    .line 126
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->addAshaAreaSelectionSpinner()V

    goto :goto_0

    .line 129
    :cond_1
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->screenName:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method
