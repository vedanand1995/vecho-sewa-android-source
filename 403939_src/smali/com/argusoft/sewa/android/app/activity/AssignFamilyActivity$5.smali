.class Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;
.super Ljava/lang/Object;
.source "AssignFamilyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->addSearchScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

.field final synthetic val$editText:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic val$editText1:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->val$editText1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-nez p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->showNotOnlineMessage()V

    return-void

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->showProcessDialog()V

    .line 261
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 262
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$602(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 263
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)I

    move-result p1

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 264
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 265
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->getFamilyDataBeanFromServer(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    .line 269
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const-string v0, "Please enter Family Id"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 272
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->val$editText1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->val$editText1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->getFamilyDataBeanFromServer(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const-string v0, "Please enter Member Id"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const-string v0, "Select how you want to Search"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->hideProcessDialog()V

    return-void
.end method
