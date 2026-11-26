.class Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$3;
.super Ljava/lang/Object;
.source "NCDRegisterFHWActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 472
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
