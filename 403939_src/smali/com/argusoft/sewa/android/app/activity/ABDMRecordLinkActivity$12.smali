.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->VerifyOTP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 726
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[Ljava/util/Timer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[Ljava/util/Timer;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 734
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showInformationDialog()V

    return-void
.end method
