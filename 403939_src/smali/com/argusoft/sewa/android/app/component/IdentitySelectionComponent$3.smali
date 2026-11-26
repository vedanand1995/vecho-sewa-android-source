.class Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$3;
.super Ljava/lang/Object;
.source "IdentitySelectionComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setMainLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

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
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$300(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$1102(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$1200(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    return-void
.end method
