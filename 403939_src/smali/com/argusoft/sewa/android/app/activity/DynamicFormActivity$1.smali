.class Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$1;
.super Ljava/util/TimerTask;
.source "DynamicFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 498
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 501
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtIntent:Landroid/content/Intent;

    const-string v1, "trainingMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ordtIntent:Landroid/content/Intent;

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
