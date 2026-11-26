.class public Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;
.super Landroidx/fragment/app/Fragment;
.source "LmsBookmarksFragment.java"


# instance fields
.field private activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private bookmarksView:Landroid/view/View;

.field private currentPosition:Ljava/lang/Integer;

.field private fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private fileName:Ljava/lang/String;

.field private isAudioRecording:Z

.field private myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

.field private recorder:Landroid/media/MediaRecorder;

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->isAudioRecording:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->currentPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/media/MediaRecorder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->recorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->recorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->currentPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->showPopUpWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bookmarksView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->generateBookmarkList(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->isAudioRecording:Z

    return p0
.end method

.method static synthetic access$902(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->isAudioRecording:Z

    return p1
.end method

.method private generateBookmarkList(Ljava/lang/Integer;)Landroid/view/View;
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveBookmarks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/util/List;)V

    .line 138
    new-instance v1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v3, v3, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    .line 140
    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 142
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 144
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bookmarksView:Landroid/view/View;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "No bookmarks has been added yet"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bookmarksView:Landroid/view/View;

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bookmarksView:Landroid/view/View;

    return-object p1
.end method

.method public static newInstance()Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;
    .locals 1

    .line 76
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;-><init>()V

    return-object v0
.end method

.method private setBookMarkButton()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPopUpWindow(Landroid/view/View;)V
    .locals 5

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->text_popup_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 174
    new-instance v2, Landroid/widget/PopupWindow;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/16 v1, 0x11

    const/4 v3, 0x0

    .line 175
    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 177
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->popup_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 178
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->popup_note:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 179
    new-instance v3, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->mic_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 199
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$4;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bodyLayoutContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->add_bookmark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedLesson()Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getVideoView()Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->myVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->generateBookmarkList(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->setBookMarkButton()V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No bookmarks available for the selected lesson"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 94
    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->fragment_lms_bookmarks:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->bodyLayoutContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 96
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->add_bookmark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 97
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->initView()V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->initView()V

    return-void
.end method
