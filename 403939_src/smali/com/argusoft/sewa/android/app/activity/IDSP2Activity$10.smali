.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;
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

    .line 799
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$902(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Z)Z

    .line 803
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    const-string v1, "finalSubmissionScreen"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$702(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 804
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setFormSubmissionScreen()V

    return-void
.end method
