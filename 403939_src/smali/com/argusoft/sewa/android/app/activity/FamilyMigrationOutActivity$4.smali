.class Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;
.super Ljava/lang/Object;
.source "FamilyMigrationOutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setVillageSearchScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 435
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 436
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;I)I

    .line 437
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 438
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 439
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->showProcessDialog()V

    .line 440
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 443
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$802(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 444
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a searched Village/Anganwadi-Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
