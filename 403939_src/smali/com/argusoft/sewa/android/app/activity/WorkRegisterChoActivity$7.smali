.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$7;
.super Ljava/lang/Object;
.source "WorkRegisterChoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addLoadMoreButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 429
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showProcessDialog()V

    .line 430
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    const/16 v0, 0x64

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->retrieveData(ZII)V

    return-void
.end method
