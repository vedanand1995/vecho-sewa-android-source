.class public Lcom/argusoft/sewa/android/app/activity/LMSActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LMSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COURSE_SCREEN:Ljava/lang/String; = "COURSE_SCREEN"

.field private static final MODULE_SCREEN:Ljava/lang/String; = "MODULE_SCREEN"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field lmsCourseDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private nextButton:Landroid/widget/Button;

.field private screen:Ljava/lang/String;

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private selectedCourseIndex:Ljava/lang/Integer;

.field private selectedMedia:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private treeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourseIndex:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedMedia:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->openMediaAccordingToType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->treeView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->treeView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Landroid/view/View;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->generateTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    return-void
.end method

.method private addCourseTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 8

    .line 342
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 344
    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Course Test"

    .line 345
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 346
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 348
    new-instance v3, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v7, 0x46

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v2

    .line 349
    invoke-virtual {p2, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 351
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addLessonTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 8

    .line 302
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 304
    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lesson Test"

    .line 305
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 306
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 308
    new-instance v3, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v7, 0x46

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v2

    .line 309
    invoke-virtual {p2, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 311
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSActivity$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addModuleTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 8

    .line 322
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 324
    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Module Test"

    .line 325
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 326
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 328
    new-instance v3, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v7, 0x46

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v2

    .line 329
    invoke-virtual {p2, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 331
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSActivity$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 169
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-string v3, "No courses to show. Please refresh and try again"

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/16 v3, 0x14

    .line 170
    invoke-virtual {v1, v3, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    return-object v1

    .line 176
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->root()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v3

    .line 177
    new-instance v4, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    .line 180
    new-instance v5, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 181
    new-instance v6, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v6, v5}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8, v2, v2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v6, v5}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v5

    .line 182
    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v3

    .line 186
    sget-object v6, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 189
    new-instance v7, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10, v2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 190
    new-instance v9, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v9, v7}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v12, 0x32

    invoke-direct {v7, v10, v8, v11, v12}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v9, v7}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v7

    .line 191
    new-array v9, v8, [Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    aput-object v7, v9, v2

    invoke-virtual {v5, v9}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChildren([Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 192
    invoke-virtual {v5, v8}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 196
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v9

    .line 197
    sget-object v10, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_MEDIA_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v10

    .line 199
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 200
    new-instance v12, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    invoke-direct {v0, v11}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getIconFromMediaType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)I

    move-result v13

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-direct {v12, v13, v14, v15}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;-><init>(ILjava/lang/String;Z)V

    .line 201
    new-instance v13, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {v13, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/argusoft/sewa/android/app/R$layout;->child:I

    const/16 v8, 0x46

    invoke-direct {v12, v14, v2, v15, v8}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;-><init>(Landroid/content/Context;ZII)V

    invoke-virtual {v13, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v8

    .line 202
    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 204
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;

    invoke-direct {v12, v0, v11, v1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V

    invoke-virtual {v8, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 216
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedMedia:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    .line 217
    invoke-virtual {v7, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 218
    invoke-virtual {v8, v12}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setSelected(Z)V

    goto :goto_2

    :cond_1
    const/4 v12, 0x1

    .line 222
    :goto_2
    invoke-direct {v0, v11, v7}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->addLessonTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    .line 226
    invoke-direct {v0, v6, v7}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->addModuleTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 230
    :cond_3
    invoke-direct {v0, v1, v5}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->addCourseTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    .line 231
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getIconFromMediaType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)I
    .locals 2

    .line 235
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "IMAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 245
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->pending:I

    return p1

    .line 237
    :pswitch_0
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->play_video:I

    return p1

    .line 241
    :pswitch_1
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->image:I

    return p1

    .line 243
    :pswitch_2
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    return p1

    .line 239
    :pswitch_3
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->pdf:I

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x134d2 -> :sswitch_3
        0x3bba3b6 -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->showProcessDialog()V

    .line 110
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 111
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 112
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->nextButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setBodyDetail()V

    return-void
.end method

.method private openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 366
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 367
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 368
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 375
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 376
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 382
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_6
    :goto_2
    if-eqz v2, :cond_9

    .line 387
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 388
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideInteractiveFeedbackAfterEachQuestion()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 389
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 390
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 391
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x9a4

    if-ne p1, p2, :cond_8

    .line 392
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 394
    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    :goto_3
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "questionSet"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string p2, "testFor"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3f8

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 400
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private openMediaAccordingToType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 11

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-string v0, "File Not Found"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "AUDIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "PDF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 297
    :goto_0
    const-string v1, "fromLms"

    const-string v2, "fileName"

    const-string v5, "path"

    const/16 v6, 0x3f8

    const-string v7, "lesson"

    const-string v8, "courseId"

    packed-switch v4, :pswitch_data_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-string v0, "File is not supported."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0, v6}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 274
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    const-class v9, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity_;

    invoke-direct {v4, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 279
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v4, v6}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 283
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v4

    .line 285
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v8

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;ZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/Integer;)V

    .line 286
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->show()V

    .line 287
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)V

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 265
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity_;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 270
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v4, v6}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x134d2 -> :sswitch_3
        0x3bba3b6 -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 465
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3f8

    if-ne p1, p2, :cond_3

    .line 467
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "COURSE_SCREEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    const-string p2, "MODULE_SCREEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 473
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setModuleScreen()V

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setCourseScreen()V

    .line 477
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 481
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setCourseScreen()V

    .line 470
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 444
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)V

    .line 457
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Learning management System?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 406
    const-string p1, "COURSE_SCREEN"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsCourseDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 408
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourseIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsCourseDataBeans:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 411
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setModuleScreen()V

    goto :goto_0

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a course"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 416
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 89
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 423
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_2

    .line 431
    const-string p1, "MODULE_SCREEN"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setCourseScreen()V

    .line 433
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->finish()V

    :goto_0
    return v1

    :cond_2
    return v2

    .line 426
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setContentView(Landroid/view/View;)V

    .line 98
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->finish()V

    .line 105
    :cond_1
    const-string v0, "Learning Management System"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsCourseDataBeans:Ljava/util/List;

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->setCourseScreen()V

    return-void
.end method

.method public setCourseScreen()V
    .locals 6

    .line 128
    const-string v0, "COURSE_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourseIndex:Ljava/lang/Integer;

    .line 130
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 132
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsCourseDataBeans:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select a Course"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsCourseDataBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 140
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v0, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LMSActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)V

    .line 149
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    invoke-static {v3, v1, v4, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 133
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No courses are available."

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->hideProcessDialog()V

    return-void
.end method

.method public setModuleScreen()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->showProcessDialog()V

    .line 158
    const-string v0, "MODULE_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->screen:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->generateTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->treeView:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->hideProcessDialog()V

    return-void
.end method
