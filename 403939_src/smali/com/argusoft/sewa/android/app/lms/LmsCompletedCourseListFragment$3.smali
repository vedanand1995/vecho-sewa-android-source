.class Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment$3;
.super Ljava/lang/Object;
.source "LmsCompletedCourseListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;->resetList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;

.field final synthetic val$courses:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;Ljava/util/List;)V
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

    .line 230
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment$3;->val$courses:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment$3;->val$courses:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;->access$102(Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;Ljava/util/List;)Ljava/util/List;

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;)V

    return-void
.end method
