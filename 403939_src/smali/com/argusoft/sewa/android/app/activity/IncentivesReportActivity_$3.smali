.class Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;
.super Ljava/lang/Object;
.source "IncentivesReportActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;->setIronPillsMemberCheckBoxList(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;

.field final synthetic val$memberDataBeans:Ljava/util/List;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;->val$memberDataBeans:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_$3;->val$memberDataBeans:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;->access$201(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
