.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;
.super Ljava/lang/Object;
.source "NDHMHealthIdCreationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->generateHealthIdUsingAadhaarOTP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 956
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)[Ljava/util/Timer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)[Ljava/util/Timer;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 964
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 966
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    return-void
.end method
