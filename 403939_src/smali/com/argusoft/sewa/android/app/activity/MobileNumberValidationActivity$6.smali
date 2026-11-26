.class Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;
.super Ljava/lang/Object;
.source "MobileNumberValidationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->addMobileVerificationScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private before:Ljava/lang/String;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 599
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 616
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    const-string v0, "Mobile verification service is temporarily blocked for this member. Please try again later."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 620
    :cond_0
    const-string v0, "^([6-9]?|[6-9]\\d{0,9})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->before:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->before:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 626
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v1, "Please enter valid mobile number"

    const-string v2, "mobileNumber"

    invoke-direct {v0, v2, v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 632
    const-string v1, "^\\d{10}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 633
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 644
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    const-string v0, "F"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 645
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 635
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 638
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    .line 639
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 641
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getOTPBasedVerificationComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$802(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 642
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 648
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 649
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 604
    const-string p2, "^([6-9]?|[6-9]\\d{0,9})$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 605
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$6;->before:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
