.class public Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;
.super Landroid/widget/LinearLayout;
.source "ChildGrowthChartComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$MyMarkerView;
    }
.end annotation


# instance fields
.field private chart:Lcom/github/mikephil/charting/charts/LineChart;

.field private final child:Lcom/argusoft/sewa/android/app/model/MemberBean;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/MemberBean;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 56
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)Lcom/github/mikephil/charting/charts/LineChart;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    return-object p0
.end method

.method private getMaxMonths()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x3c

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getMaxWeight()Ljava/lang/Integer;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->child_growth_chart_component:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->addView(Landroid/view/View;)V

    .line 65
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->childName:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->weightLabel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    const-string v2, "Weight (in kgs)"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->ageLabel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    const-string v2, "Age (in months)"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->chart1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 76
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->bodyBackground:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawBorders(Z)V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setBorderWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setExtraTopOffset(F)V

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setExtraBottomOffset(F)V

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->animateX(I)V

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawMarkers(Z)V

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 107
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 108
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 110
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/16 v4, 0xa

    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 112
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->getMaxMonths()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v5, 0x0

    .line 116
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/high16 v6, 0x41c00000    # 24.0f

    .line 117
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 118
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 119
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 121
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 122
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/high16 v3, 0x41600000    # 14.0f

    .line 127
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setFormSize(F)V

    .line 128
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 129
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    const/high16 v3, -0x1000000

    .line 130
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setTextColor(I)V

    const/high16 v3, 0x41f00000    # 30.0f

    .line 131
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setXEntrySpace(F)V

    .line 132
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/Legend;->setYEntrySpace(F)V

    .line 133
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/Legend;->setXOffset(F)V

    .line 134
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/Legend;->setYOffset(F)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 137
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 138
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 139
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 140
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 143
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setData()V

    .line 146
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$MyMarkerView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->child_growth_chart_marker_view:I

    invoke-direct {v0, p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$MyMarkerView;-><init>(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;Landroid/content/Context;I)V

    .line 148
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$MyMarkerView;->setChartView(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 149
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 160
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private setData()V
    .locals 12

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->getMaxMonths()Ljava/lang/Integer;

    move-result-object v5

    .line 175
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/argusoft/sewa/android/app/util/WeightScoreUtil;->WEIGHT_MAP_FOR_GIRLS:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/argusoft/sewa/android/app/util/WeightScoreUtil;->WEIGHT_MAP_FOR_BOYS:Ljava/util/Map;

    :goto_0
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 181
    new-instance v10, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->floatValue()F

    move-result v11

    aget-object v8, v9, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v10, v11, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->floatValue()F

    move-result v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-direct {v8, v10, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->floatValue()F

    move-result v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-direct {v8, v10, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->floatValue()F

    move-result v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-direct {v8, v10, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->floatValue()F

    move-result v7

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v8, v7, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 188
    :cond_2
    new-instance v5, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v5}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    new-instance v5, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v5}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    new-instance v5, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v5}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    new-instance v5, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v5}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    new-instance v5, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v5}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    const-string v5, "#f1763b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "-4 SD"

    invoke-direct {p0, v0, v5, v6}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v0

    .line 195
    const-string v5, "#f8a753"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "-3 SD"

    invoke-direct {p0, v1, v5, v6}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v1

    .line 196
    const-string v5, "#faf75b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "-2 SD"

    invoke-direct {p0, v2, v5, v6}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    .line 197
    const-string v5, "#88d3f7"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "-1 SD"

    invoke-direct {p0, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v3

    .line 198
    const-string v5, "#c8d94e"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "MEDIAN"

    invoke-direct {p0, v4, v5, v6}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v4

    .line 199
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->setDataForMainLine()Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v5

    .line 201
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0, v6}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 211
    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 214
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private setDataForEachLine(Ljava/util/List;ILjava/lang/String;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/mikephil/charting/data/LineDataSet;"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-direct {v0, p1, p3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 221
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 222
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/4 p1, 0x0

    .line 223
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 224
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 225
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/high16 p3, 0x40000000    # 2.0f

    .line 226
    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/high16 p3, 0x40400000    # 3.0f

    .line 227
    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    const/16 p3, 0xff

    .line 228
    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const/4 p3, 0x1

    .line 229
    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 230
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 233
    new-instance p1, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$2;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$2;-><init>(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)V

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillFormatter(Lcom/github/mikephil/charting/formatter/IFillFormatter;)V

    return-object v0
.end method

.method private setDataForMainLine()Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 11

    .line 245
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 252
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeightMap()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeightMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeightMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/github/mikephil/charting/highlight/Highlight;

    .line 256
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeightMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 257
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->child:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v7

    .line 258
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v7, v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v8, v7, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v8, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v8, v7, v6, v5}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    aput-object v8, v2, v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 266
    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v5, "Weight Growth"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawIcons(Z)V

    const/high16 v1, -0x1000000

    .line 274
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 275
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 278
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/high16 v5, 0x40400000    # 3.0f

    .line 279
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 282
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 289
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 291
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    .line 292
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    .line 295
    invoke-virtual {v0, v6, v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->enableDashedHighlightLine(FFF)V

    .line 298
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 299
    new-instance v3, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$3;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent$3;-><init>(Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillFormatter(Lcom/github/mikephil/charting/formatter/IFillFormatter;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 308
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 309
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 310
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHighlightIndicators(Z)V

    if-eqz v2, :cond_2

    .line 312
    array-length v1, v2

    if-lez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    :cond_2
    return-object v0
.end method
