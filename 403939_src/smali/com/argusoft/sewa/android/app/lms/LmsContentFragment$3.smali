.class Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$3;
.super Ljava/lang/Object;
.source "LmsContentFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getOnCollapseGroupListener()Landroid/widget/ExpandableListView$OnGroupCollapseListener;
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

    .line 204
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->clearChoices()V

    return-void
.end method
