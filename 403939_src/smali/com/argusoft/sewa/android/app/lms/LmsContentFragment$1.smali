.class Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;
.super Ljava/lang/Object;
.source "LmsContentFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getChildClickListener()Landroid/widget/ExpandableListView$OnChildClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    .line 158
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getListDataBeans()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getGroupType()Ljava/lang/String;

    move-result-object p2

    const-string p5, "LMS_COURSE"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 159
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getListDataBeans()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p2

    .line 160
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p5}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object p5

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getListDataBeans()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p5

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 162
    iget-object p6, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p6}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object p6

    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedLesson()Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p6

    if-eqz p6, :cond_0

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedLesson()Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_3

    .line 163
    :cond_0
    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getAllowedToSkipLessons()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getAllowedMediaMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_2
    :goto_0
    iget-object p6, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p6}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    move-result-object p6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->setViewedLesson(Ljava/util/List;)V

    .line 165
    iget-object p6, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p6}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object p6

    invoke-virtual {p6, p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setSelectedModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V

    .line 166
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setSelectedLesson(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    .line 167
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$302(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;I)I

    .line 168
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p2, p4}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$402(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;I)I

    .line 169
    invoke-static {p3, p4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p2

    const/4 p3, 0x1

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
