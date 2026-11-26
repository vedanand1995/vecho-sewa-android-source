.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;
.super Ljava/util/TimerTask;
.source "HealthInfrastructureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;Ljava/lang/CharSequence;)V
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

    .line 270
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener$1$1(Ljava/lang/CharSequence;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener$1$1()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
