.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$6;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendOTP()V
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

    .line 457
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    return-void
.end method
