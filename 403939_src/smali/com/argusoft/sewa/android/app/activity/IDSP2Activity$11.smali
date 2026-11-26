.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$11;
.super Ljava/lang/Object;
.source "IDSP2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 808
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$1100(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$1002(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setScreenTOAskForNextMemberVerfication()V

    return-void
.end method
