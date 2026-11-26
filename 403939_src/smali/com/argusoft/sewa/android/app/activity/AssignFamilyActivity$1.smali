.class Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;
.super Ljava/lang/Object;
.source "AssignFamilyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->assignFamilyToUserFromNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Z)Z

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;Z)Z

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 174
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->hideProcessDialog()V

    return-void
.end method
