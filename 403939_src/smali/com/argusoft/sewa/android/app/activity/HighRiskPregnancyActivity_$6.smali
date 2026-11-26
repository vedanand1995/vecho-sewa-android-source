.class Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_$6;
.super Ljava/lang/Object;
.source "HighRiskPregnancyActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;->onLoadMoreUi(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;

.field final synthetic val$membersDataBeanList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_$6;->val$membersDataBeanList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_$6;->val$membersDataBeanList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;Ljava/util/List;)V

    return-void
.end method
