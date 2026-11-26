package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LocationSelectionFromDistrictComponent extends LinearLayout implements AdapterView.OnItemSelectedListener {
    private final LinearLayout bodyLayoutContainer;
    private List<LocationMasterBean> locationBeans;
    private final Map<Integer, List<LocationMasterBean>> locationMap;
    private final LocationMasterService locationService;
    private final Type mapType;
    private final Integer maxLevel;
    private final Map<Integer, MaterialTextView> selectTextViewMap;
    private LocationMasterBean selectedLocation;
    private final Map<Integer, Spinner> spinnerMap;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public LocationSelectionFromDistrictComponent(Context context, LocationMasterService locationMasterService, Integer num) {
        super(context);
        this.locationMap = new HashMap();
        this.spinnerMap = new HashMap();
        this.selectTextViewMap = new HashMap();
        this.mapType = new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.component.LocationSelectionFromDistrictComponent.1
        }.getType();
        this.locationService = locationMasterService;
        this.maxLevel = num;
        LinearLayout locationSelectionView = getLocationSelectionView();
        this.bodyLayoutContainer = locationSelectionView;
        addView(locationSelectionView);
    }

    private LinearLayout getLocationSelectionView() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(getContext(), -1, 1, new LinearLayout.LayoutParams(-1, -2));
        this.locationBeans = new ArrayList();
        ArrayList arrayList = new ArrayList();
        arrayList.add(LocationConstants.LocationType.DISTRICT);
        arrayList.add(LocationConstants.LocationType.ZONE);
        List<LocationMasterBean> locationByTypesAndAssignedLocation = this.locationService.getLocationByTypesAndAssignedLocation(arrayList);
        if (locationByTypesAndAssignedLocation != null) {
            this.locationBeans.addAll(locationByTypesAndAssignedLocation);
        }
        if (this.locationBeans.isEmpty()) {
            linearLayout.addView(MyStaticComponents.generateInstructionView(getContext(), "No location found. Please refresh and try again"));
            this.locationService.clearLocationMasterTable();
        } else {
            addLocationSpinner(linearLayout);
        }
        return linearLayout;
    }

    public void addLocationSpinner(LinearLayout linearLayout) {
        int i = 1;
        String[] strArr = new String[this.locationBeans.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        String str = null;
        for (LocationMasterBean locationMasterBean : this.locationBeans) {
            String type = locationMasterBean.getType();
            if (locationMasterBean.getFhwDetailString() != null) {
                strArr[i] = locationMasterBean.getName() + " - " + ((String) ((Map) ((List) new Gson().fromJson(locationMasterBean.getFhwDetailString(), this.mapType)).get(0)).get("name"));
            } else {
                strArr[i] = locationMasterBean.getName();
            }
            i++;
            str = type;
        }
        Integer locationLevelByType = this.locationService.getLocationLevelByType(this.locationBeans.get(0).getType());
        this.locationMap.put(locationLevelByType, this.locationBeans);
        Spinner spinner = MyStaticComponents.getSpinner(getContext(), strArr, 0, locationLevelByType.intValue());
        spinner.setOnItemSelectedListener(this);
        String locationTypeNameByType = this.locationService.getLocationTypeNameByType(str);
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(getContext(), "Select " + locationTypeNameByType);
        linearLayout.addView(materialTextViewGenerateSubTitleView);
        linearLayout.addView(spinner);
        this.spinnerMap.put(locationLevelByType, spinner);
        this.selectTextViewMap.put(locationLevelByType, materialTextViewGenerateSubTitleView);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        int id = adapterView.getId();
        String str = null;
        if (i == 0) {
            this.selectedLocation = null;
            removeSpinners(Integer.valueOf(id));
            return;
        }
        List<LocationMasterBean> list = this.locationMap.get(Integer.valueOf(id));
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 1;
        LocationMasterBean locationMasterBean = list.get(i - 1);
        Integer num = this.maxLevel;
        List<LocationMasterBean> listRetrieveLocationMasterBeansByParent = (num == null || id < num.intValue()) ? this.locationService.retrieveLocationMasterBeansByParent(Integer.valueOf(locationMasterBean.getActualID().intValue())) : null;
        if (listRetrieveLocationMasterBeansByParent == null || listRetrieveLocationMasterBeansByParent.isEmpty()) {
            this.selectedLocation = locationMasterBean;
            removeSpinners(Integer.valueOf(id));
            return;
        }
        this.selectedLocation = null;
        int i3 = id + 1;
        this.locationMap.put(Integer.valueOf(i3), listRetrieveLocationMasterBeansByParent);
        removeSpinners(Integer.valueOf(id));
        String[] strArr = new String[listRetrieveLocationMasterBeansByParent.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        for (LocationMasterBean locationMasterBean2 : listRetrieveLocationMasterBeansByParent) {
            String type = locationMasterBean2.getType();
            if (locationMasterBean2.getFhwDetailString() != null) {
                strArr[i2] = locationMasterBean2.getName() + " - " + ((String) ((Map) ((List) new Gson().fromJson(locationMasterBean2.getFhwDetailString(), this.mapType)).get(0)).get("name"));
            } else {
                strArr[i2] = locationMasterBean2.getName();
            }
            i2++;
            str = type;
        }
        Spinner spinner = MyStaticComponents.getSpinner(getContext(), strArr, 0, i3);
        spinner.setOnItemSelectedListener(this);
        String locationTypeNameByType = this.locationService.getLocationTypeNameByType(str);
        if (locationTypeNameByType == null || locationTypeNameByType.equalsIgnoreCase(LabelConstants.NULL)) {
            locationTypeNameByType = "";
        }
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(getContext(), "Select " + locationTypeNameByType);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        this.bodyLayoutContainer.addView(spinner);
        this.spinnerMap.put(Integer.valueOf(i3), spinner);
        this.selectTextViewMap.put(Integer.valueOf(i3), materialTextViewGenerateSubTitleView);
    }

    private void removeSpinners(Integer num) {
        for (Map.Entry<Integer, List<LocationMasterBean>> entry : this.locationMap.entrySet()) {
            if (entry.getKey().intValue() > num.intValue()) {
                this.bodyLayoutContainer.removeView(this.selectTextViewMap.get(entry.getKey()));
                this.bodyLayoutContainer.removeView(this.spinnerMap.get(entry.getKey()));
            }
        }
    }

    public LocationMasterBean getSelectedLocation() {
        return this.selectedLocation;
    }
}
