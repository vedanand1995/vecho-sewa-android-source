.class Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$7;
.super Ljava/lang/Object;
.source "AssignFamilyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->getFamilyDataBeanFromServer(Ljava/lang/String;Ljava/lang/Boolean;)V
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

    .line 310
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    const-string v1, "Family not found"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
