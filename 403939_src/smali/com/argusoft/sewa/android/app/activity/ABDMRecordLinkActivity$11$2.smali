.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 700
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 705
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const-string v1, "#245eae"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$2;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    return-void
.end method
