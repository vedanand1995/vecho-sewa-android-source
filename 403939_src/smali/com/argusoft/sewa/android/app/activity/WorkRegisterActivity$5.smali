.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$5;
.super Ljava/lang/Object;
.source "WorkRegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->retrieveData(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V
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
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    const-string v2, "No services have been provided during the selected period"

    .line 348
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
