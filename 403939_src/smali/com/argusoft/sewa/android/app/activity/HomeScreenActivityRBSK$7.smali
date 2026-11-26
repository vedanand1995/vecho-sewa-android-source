.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$7;
.super Ljava/util/TimerTask;
.source "HomeScreenActivityRBSK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$7;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$7;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->addLocations()V

    return-void
.end method
