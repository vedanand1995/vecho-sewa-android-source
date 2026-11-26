.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$7;
.super Ljava/lang/Object;
.source "WorkRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addLoadMoreButton()V
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

    .line 454
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 457
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->showProcessDialog()V

    .line 458
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;

    const/16 v0, 0x64

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->retrieveData(ZII)V

    return-void
.end method
