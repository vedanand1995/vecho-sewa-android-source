.class Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;
.super Ljava/lang/Object;
.source "IdentitySelectionComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 140
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onItemSelected$0$com-argusoft-sewa-android-app-component-IdentitySelectionComponent$2()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$200(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$300(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$400(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$300(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$402(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Z)Z

    .line 147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$600(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->getAnswerString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$502(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$500(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$500(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AADHAR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p1

    if-nez p1, :cond_1

    .line 151
    new-instance p1, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$800(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$300(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p3

    new-instance p4, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;)V

    invoke-direct {p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/listeners/IdentityCheckBoxListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/Runnable;)V

    .line 152
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$900(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/content/Context;

    move-result-object p3

    const p4, 0x1862f

    const/4 p5, 0x0

    const-string v0, "Check the box to confirm that you have taken the consent of the beneficiary for collecting Aadhaar Number"

    invoke-static {p3, v0, p4, p5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$702(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 153
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$900(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/argusoft/sewa/android/app/R$color;->checkbox_selector:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$1000(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$1000(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 165
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$200(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
