.class public Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;
.super Ljava/lang/Object;
.source "IdentityCheckBoxListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private final onConsentChanged:Ljava/lang/Runnable;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 16
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 17
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->onConsentChanged:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p2, :cond_1

    .line 24
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string p2, "T"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;->onConsentChanged:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
