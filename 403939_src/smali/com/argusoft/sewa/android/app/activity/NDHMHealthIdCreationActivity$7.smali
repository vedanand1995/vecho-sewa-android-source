.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$7;
.super Ljava/lang/Object;
.source "NDHMHealthIdCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOTPVerificationScreen(Ljava/lang/String;)V
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

    .line 858
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 861
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 862
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendOTP()V

    return-void
.end method
