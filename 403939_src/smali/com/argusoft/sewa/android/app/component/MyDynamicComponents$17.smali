.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMemberDetailsComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$allOptions:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$memberDetailsLayout:Landroid/widget/LinearLayout;

.field final synthetic val$moreButton:Lcom/google/android/material/button/MaterialButton;

.field final synthetic val$optionsForFirst:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/google/android/material/button/MaterialButton;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2954
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$allOptions:Ljava/util/List;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$moreButton:Lcom/google/android/material/button/MaterialButton;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$optionsForFirst:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2957
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$200()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2958
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$allOptions:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$300(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 2959
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$moreButton:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "Less"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2961
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$optionsForFirst:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$300(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 2962
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;->val$moreButton:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "More"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 2964
    :goto_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$200()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$202(Z)Z

    return-void
.end method
