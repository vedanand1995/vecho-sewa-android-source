.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;
.super Ljava/lang/Object;
.source "IDSP2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addAshaNotAssignedMessage()V
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

    .line 564
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 566
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7$1;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;)V

    .line 572
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v3, "ASHA worker not assigned for the areas in this village. Please contact Call Center before starting the Survey."

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v7, v6, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 575
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
