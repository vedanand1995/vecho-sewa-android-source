.class Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LibraryActivity;

.field final synthetic val$header:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LibraryActivity;Ljava/lang/String;)V
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

    .line 290
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LibraryActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;->val$header:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LibraryActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;->val$header:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LibraryActivity;Ljava/lang/String;I)I

    move-result v3

    const/4 p1, -0x1

    if-eq v3, p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LibraryActivity;

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
