.class Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$2;
.super Ljava/lang/Object;
.source "ChildGrowthChartComponent.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IFillFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$2;->this$0:Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->access$000(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisMinimum()F

    move-result p1

    return p1
.end method
