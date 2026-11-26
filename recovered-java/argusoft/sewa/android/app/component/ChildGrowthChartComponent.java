package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WeightScoreUtil;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.MarkerView;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.IFillFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.EntryXComparator;
import com.github.mikephil.charting.utils.MPPointF;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ChildGrowthChartComponent extends LinearLayout {
    private LineChart chart;
    private final MemberBean child;
    private final Context context;

    public ChildGrowthChartComponent(Context context, MemberBean memberBean) {
        super(context);
        this.context = context;
        this.child = memberBean;
        System.out.println(memberBean);
        init();
    }

    private void init() {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.child_growth_chart_component, (ViewGroup) null);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        addView(linearLayout);
        ((TextView) linearLayout.findViewById(R.id.childName)).setText(UtilBean.getMemberFullName(this.child));
        ((TextView) linearLayout.findViewById(R.id.weightLabel)).setText(UtilBean.getMyLabel(LabelConstants.WEIGHT_IN_KGS));
        ((TextView) linearLayout.findViewById(R.id.ageLabel)).setText(UtilBean.getMyLabel("Age (in months)"));
        LineChart lineChart = (LineChart) linearLayout.findViewById(R.id.chart1);
        this.chart = lineChart;
        lineChart.setBackgroundColor(ContextCompat.getColor(this.context, R.color.bodyBackground));
        this.chart.setDrawGridBackground(true);
        this.chart.getDescription().setEnabled(false);
        this.chart.setTouchEnabled(true);
        this.chart.setDrawBorders(true);
        this.chart.setBorderWidth(1.0f);
        this.chart.setExtraTopOffset(10.0f);
        this.chart.setExtraBottomOffset(10.0f);
        this.chart.setDoubleTapToZoomEnabled(true);
        this.chart.setDragEnabled(true);
        this.chart.setScaleEnabled(true);
        this.chart.setPinchZoom(true);
        this.chart.animateX(1000);
        this.chart.setDrawMarkers(false);
        XAxis xAxis = this.chart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setTextSize(15.0f);
        xAxis.setDrawAxisLine(true);
        xAxis.setDrawGridLines(false);
        xAxis.setLabelCount(10, true);
        xAxis.setAxisMaximum(getMaxMonths().intValue());
        YAxis axisLeft = this.chart.getAxisLeft();
        axisLeft.setAxisMinimum(0.0f);
        axisLeft.setAxisMaximum(24.0f);
        axisLeft.setTextSize(15.0f);
        axisLeft.setDrawAxisLine(false);
        axisLeft.setDrawZeroLine(false);
        axisLeft.setDrawGridLines(false);
        axisLeft.setLabelCount(10);
        this.chart.getAxisRight().setEnabled(false);
        Legend legend = this.chart.getLegend();
        legend.setFormSize(14.0f);
        legend.setForm(Legend.LegendForm.SQUARE);
        legend.setTextSize(14.0f);
        legend.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        legend.setXEntrySpace(30.0f);
        legend.setYEntrySpace(0.0f);
        legend.setXOffset(0.0f);
        legend.setYOffset(0.0f);
        legend.setWordWrapEnabled(true);
        legend.setVerticalAlignment(Legend.LegendVerticalAlignment.TOP);
        legend.setHorizontalAlignment(Legend.LegendHorizontalAlignment.CENTER);
        legend.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        legend.setDrawInside(false);
        setData();
        MyMarkerView myMarkerView = new MyMarkerView(this.context, R.layout.child_growth_chart_marker_view);
        myMarkerView.setChartView(this.chart);
        this.chart.setOnChartValueSelectedListener(new OnChartValueSelectedListener() { // from class: com.argusoft.sewa.android.app.component.ChildGrowthChartComponent.1
            @Override // com.github.mikephil.charting.listener.OnChartValueSelectedListener
            public void onNothingSelected() {
            }

            @Override // com.github.mikephil.charting.listener.OnChartValueSelectedListener
            public void onValueSelected(Entry entry, Highlight highlight) {
                ChildGrowthChartComponent.this.chart.setDrawMarkers(true);
            }
        });
        this.chart.setMarker(myMarkerView);
        this.chart.invalidate();
    }

    private void setData() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        Integer maxMonths = getMaxMonths();
        for (Map.Entry<Integer, String> entry : (this.child.getGender().equals("F") ? WeightScoreUtil.WEIGHT_MAP_FOR_GIRLS : WeightScoreUtil.WEIGHT_MAP_FOR_BOYS).entrySet()) {
            if (entry.getKey().intValue() <= maxMonths.intValue()) {
                String[] strArrSplit = entry.getValue().split(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
                arrayList.add(new Entry(entry.getKey().floatValue(), Float.parseFloat(strArrSplit[0])));
                arrayList2.add(new Entry(entry.getKey().floatValue(), Float.parseFloat(strArrSplit[1])));
                arrayList3.add(new Entry(entry.getKey().floatValue(), Float.parseFloat(strArrSplit[2])));
                arrayList4.add(new Entry(entry.getKey().floatValue(), Float.parseFloat(strArrSplit[3])));
                arrayList5.add(new Entry(entry.getKey().floatValue(), Float.parseFloat(strArrSplit[4])));
            }
        }
        Collections.sort(arrayList, new EntryXComparator());
        Collections.sort(arrayList2, new EntryXComparator());
        Collections.sort(arrayList3, new EntryXComparator());
        Collections.sort(arrayList4, new EntryXComparator());
        Collections.sort(arrayList5, new EntryXComparator());
        LineDataSet dataForEachLine = setDataForEachLine(arrayList, Color.parseColor("#f1763b"), "-4 SD");
        LineDataSet dataForEachLine2 = setDataForEachLine(arrayList2, Color.parseColor("#f8a753"), "-3 SD");
        LineDataSet dataForEachLine3 = setDataForEachLine(arrayList3, Color.parseColor("#faf75b"), "-2 SD");
        LineDataSet dataForEachLine4 = setDataForEachLine(arrayList4, Color.parseColor("#88d3f7"), "-1 SD");
        LineDataSet dataForEachLine5 = setDataForEachLine(arrayList5, Color.parseColor("#c8d94e"), RchConstants.SD_SCORE_MEDIAN);
        LineDataSet dataForMainLine = setDataForMainLine();
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(dataForEachLine5);
        arrayList6.add(dataForEachLine4);
        arrayList6.add(dataForEachLine3);
        arrayList6.add(dataForEachLine2);
        arrayList6.add(dataForEachLine);
        arrayList6.add(dataForMainLine);
        LineData lineData = new LineData(arrayList6);
        lineData.setDrawValues(false);
        this.chart.setData(lineData);
    }

    private LineDataSet setDataForEachLine(List<Entry> list, int i, String str) {
        LineDataSet lineDataSet = new LineDataSet(list, str);
        lineDataSet.setAxisDependency(YAxis.AxisDependency.LEFT);
        lineDataSet.setColor(i);
        lineDataSet.setHighlightEnabled(false);
        lineDataSet.setDrawCircles(false);
        lineDataSet.setDrawValues(false);
        lineDataSet.setLineWidth(2.0f);
        lineDataSet.setCircleRadius(3.0f);
        lineDataSet.setFillAlpha(255);
        lineDataSet.setDrawFilled(true);
        lineDataSet.setFillColor(i);
        lineDataSet.setDrawCircleHole(false);
        lineDataSet.setFillFormatter(new IFillFormatter() { // from class: com.argusoft.sewa.android.app.component.ChildGrowthChartComponent.2
            @Override // com.github.mikephil.charting.formatter.IFillFormatter
            public float getFillLinePosition(ILineDataSet iLineDataSet, LineDataProvider lineDataProvider) {
                return ChildGrowthChartComponent.this.chart.getAxisLeft().getAxisMinimum();
            }
        });
        return lineDataSet;
    }

    private LineDataSet setDataForMainLine() {
        Highlight[] highlightArr = null;
        MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = this.child.getAdditionalInfo() != null ? (MemberAdditionalInfoDataBean) new Gson().fromJson(this.child.getAdditionalInfo(), MemberAdditionalInfoDataBean.class) : null;
        ArrayList arrayList = new ArrayList();
        if (memberAdditionalInfoDataBean != null && memberAdditionalInfoDataBean.getWeightMap() != null && !memberAdditionalInfoDataBean.getWeightMap().isEmpty()) {
            highlightArr = new Highlight[memberAdditionalInfoDataBean.getWeightMap().size()];
            int i = 0;
            for (Map.Entry<Long, Float> entry : memberAdditionalInfoDataBean.getWeightMap().entrySet()) {
                float fCalculateMonthsBetweenDates = UtilBean.calculateMonthsBetweenDates(this.child.getDob(), new Date(entry.getKey().longValue()));
                arrayList.add(new Entry(fCalculateMonthsBetweenDates, entry.getValue().floatValue()));
                highlightArr[i] = new Highlight(fCalculateMonthsBetweenDates, entry.getValue().floatValue(), i);
                i++;
            }
        }
        LineDataSet lineDataSet = new LineDataSet(arrayList, UtilBean.getMyLabel("Weight Growth"));
        lineDataSet.setDrawIcons(false);
        lineDataSet.setColor(ViewCompat.MEASURED_STATE_MASK);
        lineDataSet.setCircleColor(ViewCompat.MEASURED_STATE_MASK);
        lineDataSet.setLineWidth(2.0f);
        lineDataSet.setCircleRadius(3.0f);
        lineDataSet.setDrawCircleHole(false);
        lineDataSet.setDrawValues(true);
        lineDataSet.setValueTextSize(15.0f);
        lineDataSet.setValueTextColor(ViewCompat.MEASURED_STATE_MASK);
        lineDataSet.enableDashedHighlightLine(10.0f, 5.0f, 0.0f);
        lineDataSet.setDrawFilled(true);
        lineDataSet.setFillFormatter(new IFillFormatter() { // from class: com.argusoft.sewa.android.app.component.ChildGrowthChartComponent.3
            @Override // com.github.mikephil.charting.formatter.IFillFormatter
            public float getFillLinePosition(ILineDataSet iLineDataSet, LineDataProvider lineDataProvider) {
                return ChildGrowthChartComponent.this.chart.getAxisLeft().getAxisMinimum();
            }
        });
        lineDataSet.setFillColor(ViewCompat.MEASURED_STATE_MASK);
        lineDataSet.setHighlightEnabled(true);
        lineDataSet.setHighLightColor(ViewCompat.MEASURED_STATE_MASK);
        lineDataSet.setDrawHighlightIndicators(true);
        if (highlightArr != null && highlightArr.length > 0) {
            this.chart.highlightValues(highlightArr);
        }
        return lineDataSet;
    }

    private Integer getMaxMonths() {
        return 60;
    }

    private Integer getMaxWeight() {
        if (this.child.getWeight() != null) {
            return Integer.valueOf(Float.valueOf(this.child.getWeight().floatValue() + 2.0f).intValue());
        }
        return 20;
    }

    public class MyMarkerView extends MarkerView {
        private final TextView tvContent;

        public MyMarkerView(Context context, int i) {
            super(context, i);
            this.tvContent = (TextView) findViewById(R.id.tvContent);
        }

        @Override // com.github.mikephil.charting.components.MarkerView, com.github.mikephil.charting.components.IMarker
        public void refreshContent(Entry entry, Highlight highlight) {
            this.tvContent.setText(UtilBean.getMyLabel("Month") + " : " + Float.valueOf(highlight.getX()).intValue() + LabelConstants.NEW_LINE + UtilBean.getMyLabel("Weight") + " : " + highlight.getY());
            super.refreshContent(entry, highlight);
        }

        @Override // com.github.mikephil.charting.components.MarkerView, com.github.mikephil.charting.components.IMarker
        public MPPointF getOffset() {
            return new MPPointF(-(getWidth() / 2), -getHeight());
        }
    }
}
