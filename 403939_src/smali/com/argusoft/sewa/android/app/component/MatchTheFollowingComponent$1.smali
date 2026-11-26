.class Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;
.super Ljava/lang/Object;
.source "MatchTheFollowingComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getDragDropView()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

.field final synthetic val$answer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;Landroid/view/View;)V
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

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;->val$answer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$002(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;I)I

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 123
    const-string p1, ""

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 124
    new-instance p2, Landroid/view/View$DragShadowBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;->val$answer:Landroid/view/View;

    invoke-direct {p2, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 126
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;->val$answer:Landroid/view/View;

    invoke-virtual {v1, p1, p2, v1, v0}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 127
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;->val$answer:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
