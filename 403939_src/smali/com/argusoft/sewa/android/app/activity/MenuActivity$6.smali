.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

.field final synthetic val$bodyLayoutContainer:Landroid/widget/LinearLayout;

.field final synthetic val$nextButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;)V
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

    .line 332
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->val$bodyLayoutContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->val$nextButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->val$bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    const-string v2, "Data not synced properly. Please refresh."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;)V

    .line 342
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->val$nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->val$nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V

    return-void
.end method
