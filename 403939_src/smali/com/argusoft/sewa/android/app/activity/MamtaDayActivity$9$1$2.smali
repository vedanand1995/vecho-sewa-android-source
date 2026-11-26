.class Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1$2;
.super Ljava/lang/Object;
.source "MamtaDayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showProcessDialog()V

    .line 583
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method
