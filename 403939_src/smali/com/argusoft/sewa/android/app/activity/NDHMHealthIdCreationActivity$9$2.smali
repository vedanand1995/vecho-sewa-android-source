.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;
.super Ljava/lang/Object;
.source "NDHMHealthIdCreationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 912
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;->this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;->this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;->this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 917
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;->this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 918
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;->this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const-string v1, "#245eae"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 919
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;->this$1:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    return-void
.end method
