package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class RegionListListener {
    private Spinner blockSpinner;
    private final Context context;
    private Spinner districtSpinner;
    private LinearLayout hierarchyLayout;
    private MaterialTextView hierarchyTextView;
    private Spinner phcSpinner;
    private QueFormBean queFormBean;
    private MaterialTextView selectBlockQues;
    private MaterialTextView selectDistrictQues;
    private MaterialTextView selectPhcQues;
    private MaterialTextView selectSubcenterQues;
    private MaterialTextView selectVillageQues;
    private Spinner subCenterSpinner;
    private Spinner villageSpinner;
    private Map<String, Long> selectionMap = new HashMap();
    private Long selectedLocationId = null;

    public RegionListListener(Context context, QueFormBean queFormBean) {
        this.context = context;
        this.queFormBean = queFormBean;
    }

    public LinearLayout addHierarchyLayoutForSchool() {
        if (this.hierarchyTextView == null) {
            this.hierarchyTextView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_HIERARCHY_FOR_SCHOOL));
        }
        if (this.hierarchyLayout == null) {
            this.hierarchyLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -1));
            addRegionSpinner();
        }
        return this.hierarchyLayout;
    }

    private void addRegionSpinner() {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(1, 2L);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 1);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.RegionListListener.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                RegionListListener.this.selectionMap.remove(MorbiditiesConstant.TWO_PLUS);
                RegionListListener.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                RegionListListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                RegionListListener.this.selectionMap.remove("5");
                RegionListListener.this.selectionMap.remove("6");
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectDistrictQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.districtSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectBlockQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.blockSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectPhcQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.phcSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectSubcenterQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.subCenterSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectVillageQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.villageSpinner);
                if (i2 == 0) {
                    RegionListListener.this.selectedLocationId = null;
                    return;
                }
                LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                RegionListListener.this.selectionMap.put(MorbiditiesConstant.ONE_PLUS, locationMasterBean.getActualID());
                RegionListListener.this.selectedLocationId = locationMasterBean.getActualID();
                RegionListListener.this.addDistrictSpinner(locationMasterBean.getActualID());
            }
        });
        this.hierarchyLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.REGION)));
        this.hierarchyLayout.addView(spinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDistrictSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(2, l);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 2);
        this.districtSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.RegionListListener.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                RegionListListener.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                RegionListListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                RegionListListener.this.selectionMap.remove("5");
                RegionListListener.this.selectionMap.remove("6");
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectBlockQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.blockSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectPhcQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.phcSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectSubcenterQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.subCenterSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectVillageQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.villageSpinner);
                if (i2 != 0) {
                    LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                    RegionListListener.this.selectionMap.put(MorbiditiesConstant.TWO_PLUS, locationMasterBean.getActualID());
                    RegionListListener.this.selectedLocationId = locationMasterBean.getActualID();
                    RegionListListener.this.addBlockSpinner(locationMasterBean.getActualID());
                    return;
                }
                RegionListListener regionListListener = RegionListListener.this;
                regionListListener.selectedLocationId = (Long) regionListListener.selectionMap.get(MorbiditiesConstant.ONE_PLUS);
            }
        });
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DISTRICT_OR_CORPORATION));
        this.selectDistrictQues = materialTextViewGenerateQuestionView;
        this.hierarchyLayout.addView(materialTextViewGenerateQuestionView);
        this.hierarchyLayout.addView(this.districtSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBlockSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(3, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 3);
        this.blockSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.RegionListListener.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                RegionListListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                RegionListListener.this.selectionMap.remove("5");
                RegionListListener.this.selectionMap.remove("6");
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectPhcQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.phcSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectSubcenterQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.subCenterSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectVillageQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    RegionListListener.this.selectionMap.put(MorbiditiesConstant.THREE_PLUS, locationMasterBean2.getActualID());
                    RegionListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    RegionListListener.this.addPhcSpinner(locationMasterBean2.getActualID());
                    return;
                }
                RegionListListener regionListListener = RegionListListener.this;
                regionListListener.selectedLocationId = (Long) regionListListener.selectionMap.get(MorbiditiesConstant.TWO_PLUS);
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LocationConstants.LocationType.TALUKA)) {
                    sb.append(LabelConstants.BLOCK);
                }
                if (str.equals(LocationConstants.LocationType.ZONE)) {
                    sb.append(LabelConstants.ZONE);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.TALUKA)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOCK));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.ZONE)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ZONE));
            }
        } else {
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOCK));
        }
        this.hierarchyLayout.addView(this.selectBlockQues);
        this.hierarchyLayout.addView(this.blockSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPhcSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(4, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 3);
        this.phcSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.RegionListListener.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                RegionListListener.this.selectionMap.remove("5");
                RegionListListener.this.selectionMap.remove("6");
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectSubcenterQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.subCenterSpinner);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectVillageQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    RegionListListener.this.selectionMap.put(MorbiditiesConstant.FOUR_PLUS, locationMasterBean2.getActualID());
                    RegionListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    RegionListListener.this.addSubCenterSpinner(locationMasterBean2.getActualID());
                    return;
                }
                RegionListListener regionListListener = RegionListListener.this;
                regionListListener.selectedLocationId = (Long) regionListListener.selectionMap.get(MorbiditiesConstant.THREE_PLUS);
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("U")) {
                    sb.append(LabelConstants.UHC);
                }
                if (str.equals("P")) {
                    sb.append(LabelConstants.PHC);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("U")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.UHC));
            }
            if (((String) arrayList.get(0)).equals("P")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PHC));
            }
        } else {
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PHC));
        }
        this.hierarchyLayout.addView(this.selectPhcQues);
        this.hierarchyLayout.addView(this.phcSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubCenterSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(5, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 5);
        this.subCenterSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.RegionListListener.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                RegionListListener.this.selectionMap.remove("5");
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.selectVillageQues);
                RegionListListener.this.hierarchyLayout.removeView(RegionListListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    RegionListListener.this.selectionMap.put("5", locationMasterBean2.getActualID());
                    RegionListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    RegionListListener.this.addVillageSpinner(locationMasterBean2.getActualID());
                    return;
                }
                RegionListListener regionListListener = RegionListListener.this;
                regionListListener.selectedLocationId = (Long) regionListListener.selectionMap.get(MorbiditiesConstant.FOUR_PLUS);
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("ANM")) {
                    sb.append(LabelConstants.ANM_AREA);
                }
                if (str.equals("SC")) {
                    sb.append(LabelConstants.SUB_CENTER);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("ANM")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ANM_AREA));
            }
            if (((String) arrayList.get(0)).equals("SC")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SUB_CENTER));
            }
        } else {
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SUB_CENTER));
        }
        this.hierarchyLayout.addView(this.selectSubcenterQues);
        this.hierarchyLayout.addView(this.subCenterSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addVillageSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(6, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 6);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.RegionListListener.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                if (i3 == 0) {
                    RegionListListener.this.selectionMap.remove("6");
                    RegionListListener regionListListener = RegionListListener.this;
                    regionListListener.selectedLocationId = (Long) regionListListener.selectionMap.get("5");
                } else {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    RegionListListener.this.selectionMap.put("6", locationMasterBean2.getActualID());
                    RegionListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                }
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LabelConstants.UA)) {
                    sb.append(LabelConstants.URBAN_AREA);
                }
                if (str.equals(LocationConstants.LocationType.VILLAGE)) {
                    sb.append("Village");
                }
                if (str.equals("ANG")) {
                    sb.append(LabelConstants.ANGANWADI_AREA);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LabelConstants.UA)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.URBAN_AREA));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.VILLAGE)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Village"));
            }
            if (((String) arrayList.get(0)).equals("ANG")) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ANGANWADI_AREA));
            }
        } else {
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Village"));
        }
        this.hierarchyLayout.addView(this.selectVillageQues);
        this.hierarchyLayout.addView(this.villageSpinner);
    }
}
