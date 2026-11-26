.class Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;
.super Ljava/lang/Object;
.source "MatchTheFollowingComponent.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    .line 167
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 174
    check-cast p1, Landroid/widget/LinearLayout;

    .line 175
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 183
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 184
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 186
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$200(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$200(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$300(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 189
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$400(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$400(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$400(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$500(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 194
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$200(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$200(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$400(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 201
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$600(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$700(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)V

    goto :goto_1

    .line 205
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$800(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 209
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->lms_mf_ans_layout:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 210
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 211
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$900(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_6
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 169
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->access$100(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;Landroid/view/DragEvent;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
