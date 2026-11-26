.class Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "IncentiveMonthlyDetailsDataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean$1;->this$0:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
