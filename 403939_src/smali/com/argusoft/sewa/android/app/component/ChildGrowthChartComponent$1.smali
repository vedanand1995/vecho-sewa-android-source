.class Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$1;
.super Ljava/lang/Object;
.source "ChildGrowthChartComponent.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->init()V
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

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .locals 0

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->access$000(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawMarkers(Z)V

    return-void
.end method
