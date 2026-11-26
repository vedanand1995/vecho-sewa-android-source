.class Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$2;
.super Ljava/lang/Object;
.source "CbacDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->retrieveCbacDetailFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->context:Landroid/content/Context;

    const-string v1, "Data not synced properly. Please refresh."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
