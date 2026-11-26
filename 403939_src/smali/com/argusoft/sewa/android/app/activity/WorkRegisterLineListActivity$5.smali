.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;
.super Ljava/lang/Object;
.source "WorkRegisterLineListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    const-string v2, "Some error occurred. Please try again."

    .line 282
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->hideProcessDialog()V

    return-void
.end method
