.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$9;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setOTPVerificationScreen()V
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

    .line 558
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 561
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showProcessDialog()V

    .line 562
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->VerifyOTP()V

    return-void
.end method
