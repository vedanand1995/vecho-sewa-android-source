.class Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$3;
.super Ljava/lang/Object;
.source "LmsArchivedCourseListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->resetList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

.field final synthetic val$courses:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$3;->val$courses:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$3;->val$courses:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$302(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;Ljava/util/List;)Ljava/util/List;

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)V

    return-void
.end method
