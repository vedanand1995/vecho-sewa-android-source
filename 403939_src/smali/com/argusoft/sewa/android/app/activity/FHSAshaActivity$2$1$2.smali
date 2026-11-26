.class Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$2;
.super Ljava/lang/Object;
.source "FHSAshaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->showProcessDialog()V

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method
