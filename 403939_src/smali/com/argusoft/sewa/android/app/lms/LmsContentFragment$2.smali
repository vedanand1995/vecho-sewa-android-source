.class Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;
.super Ljava/lang/Object;
.source "LmsContentFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getOnExpandGroupListener()Landroid/widget/ExpandableListView$OnGroupExpandListener;
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

    .line 183
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getListDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMS_COURSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getListDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getQuestionSet()Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    move-result-object p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$602(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;I)I

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p1

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    :cond_2
    :goto_0
    return-void
.end method
