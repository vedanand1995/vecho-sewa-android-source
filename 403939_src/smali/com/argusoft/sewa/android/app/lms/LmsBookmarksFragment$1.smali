.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;
.super Ljava/lang/Object;
.source "LmsBookmarksFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->generateBookmarkList(Ljava/lang/Integer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

.field final synthetic val$bookmarkDataBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/util/List;)V
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

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;->val$bookmarkDataBeans:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 132
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;->val$bookmarkDataBeans:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    .line 133
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    return-void
.end method
