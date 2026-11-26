.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHBComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$hbAnswerView:Lcom/google/android/material/textview/MaterialTextView;

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1268
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;->val$hbAnswerView:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1276
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;->val$context:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;->val$hbAnswerView:Lcom/google/android/material/textview/MaterialTextView;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, p3, p4, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->checkValidationForHB(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
