.class Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;
.super Ljava/lang/Object;
.source "MigrateOutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setVillageSearchScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 352
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 353
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;I)I

    .line 354
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

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

    if-lez p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->showProcessDialog()V

    .line 356
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 359
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$802(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 360
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter Village/Anganwadi-Area name to search"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
