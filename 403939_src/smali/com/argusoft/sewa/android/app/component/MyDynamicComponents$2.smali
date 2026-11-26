.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getFormSubmissionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field final synthetic val$submitOption:Lcom/argusoft/sewa/android/app/databean/OptionTagBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/databean/OptionTagBean;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$submitOption:Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 536
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$submitOption:Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$submitOption:Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 538
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;->val$context:Landroid/content/Context;

    check-cast p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getFormEngine()Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->navigateToNextPage()V

    return-void
.end method
