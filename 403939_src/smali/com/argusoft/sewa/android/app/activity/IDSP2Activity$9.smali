.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;
.super Ljava/lang/Object;
.source "IDSP2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->storeIDSPForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 744
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v1, "Surveillance form submitted successfully!"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$600(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 749
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    const-string v1, "familySelectionScreen"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$702(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 750
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$800(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    .line 751
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addFamilyList()V

    return-void
.end method
