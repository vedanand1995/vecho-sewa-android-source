.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$6;
.super Ljava/lang/Object;
.source "WorkRegisterAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addLoadMoreButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 418
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->showProcessDialog()V

    .line 419
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    const/16 v0, 0x64

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->retrieveData(ZII)V

    return-void
.end method
