.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$3;
.super Ljava/lang/Object;
.source "WorkRegisterAshaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->retrieveData(ZII)V
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

    .line 297
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
