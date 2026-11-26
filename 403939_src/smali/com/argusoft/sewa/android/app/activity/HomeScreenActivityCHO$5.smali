.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$5;
.super Ljava/util/TimerTask;
.source "HomeScreenActivityCHO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$5;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$5;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->addLocations()V

    return-void
.end method
