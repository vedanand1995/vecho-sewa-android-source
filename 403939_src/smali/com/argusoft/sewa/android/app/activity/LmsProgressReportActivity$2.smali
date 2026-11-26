.class Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$2;
.super Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;
.source "LmsProgressReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setCourseListScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;-><init>(Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onAdapterItemClick(I)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->openCourseDetailScreen()V

    return-void
.end method

.method public onMenuClick(ILandroid/view/View;)V
    .locals 0

    return-void
.end method
