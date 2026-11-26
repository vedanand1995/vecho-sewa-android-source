.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getBMIComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bmiAnswerView:Lcom/google/android/material/textview/MaterialTextView;

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field final synthetic val$weightAnswerText:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 981
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;->val$weightAnswerText:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;->val$bmiAnswerView:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

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

    .line 989
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;->val$weightAnswerText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;->val$bmiAnswerView:Lcom/google/android/material/textview/MaterialTextView;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->checkValidationForBMI(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)V

    return-void
.end method
