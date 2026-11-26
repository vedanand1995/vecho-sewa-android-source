.class Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;
.super Ljava/lang/Object;
.source "AssignFamilyActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$searchButton:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Landroid/widget/RadioGroup;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 233
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$editText1:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$searchButton:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$602(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 237
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$702(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;I)I

    .line 238
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$editText1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 240
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$searchButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 241
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 243
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    .line 244
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$searchButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 247
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$editText1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$4;->val$searchButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
