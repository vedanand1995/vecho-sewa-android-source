.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getPhotoPicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;I)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentQuestionId:I

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2859
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2871
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->closeImageView:I

    if-ne v0, v1, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 2875
    :cond_0
    :try_start_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->currentQuestionId:I

    sput p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    .line 2876
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->activity:Landroid/app/Activity;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2879
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2881
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;
    .locals 0

    .line 2864
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->activity:Landroid/app/Activity;

    .line 2865
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->currentQuestionId:I

    return-object p0
.end method
