.class Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$5;
.super Ljava/util/TimerTask;
.source "GenericHomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->addLocations()V

    return-void
.end method
