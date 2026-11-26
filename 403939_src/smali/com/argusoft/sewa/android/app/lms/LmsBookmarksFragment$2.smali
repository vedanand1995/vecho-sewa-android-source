.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;
.super Ljava/lang/Object;
.source "LmsBookmarksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->setBookMarkButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->pauseMediaPlayerAndGetPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$102(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
