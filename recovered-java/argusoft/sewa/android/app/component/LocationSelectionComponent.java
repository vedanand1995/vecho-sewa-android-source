package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.model.LocationBean;
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
public class LocationSelectionComponent extends LinearLayout implements AdapterView.OnItemSelectedListener {
    private final LinearLayout bodyLayoutContainer;
    private List<LocationMasterBean> locationBeans;
    private final Map<Integer, List<LocationMasterBean>> locationMap;
    private LocationSelectionInterface locationSelectionInterface;
    private final LocationMasterService locationService;
    private Type mapType;
    private final List<String> maxLevel;
    private final Map<Integer, MaterialTextView> selectTextViewMap;
    private LocationMasterBean selectedLocation;
    private final Map<Integer, Spinner> spinnerMap;

    public interface LocationSelectionInterface {
        void onLocationSelect(LocationMasterBean locationMasterBean);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public LocationSelectionComponent(Context context, LocationMasterService locationMasterService, List<String> list) {
        super(context);
        this.locationMap = new HashMap();
        this.spinnerMap = new HashMap();
        this.selectTextViewMap = new HashMap();
        this.mapType = new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.component.LocationSelectionComponent.1
        }.getType();
        this.locationService = locationMasterService;
        this.maxLevel = list;
        LinearLayout locationSelectionView = getLocationSelectionView();
        this.bodyLayoutContainer = locationSelectionView;
        addView(locationSelectionView);
    }

    public LocationSelectionComponent(Context context, LocationMasterService locationMasterService, List<String> list, LocationSelectionInterface locationSelectionInterface) {
        super(context);
        this.locationMap = new HashMap();
        this.spinnerMap = new HashMap();
        this.selectTextViewMap = new HashMap();
        this.mapType = new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.component.LocationSelectionComponent.1
        }.getType();
        this.locationService = locationMasterService;
        this.maxLevel = list;
        LinearLayout locationSelectionView = getLocationSelectionView();
        this.bodyLayoutContainer = locationSelectionView;
        this.locationSelectionInterface = locationSelectionInterface;
        addView(locationSelectionView);
    }

    public LocationSelectionComponent(Context context, LocationMasterService locationMasterService, List<String> list, boolean z) {
        super(context);
        this.locationMap = new HashMap();
        this.spinnerMap = new HashMap();
        this.selectTextViewMap = new HashMap();
        this.mapType = new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.component.LocationSelectionComponent.1
        }.getType();
        this.locationService = locationMasterService;
        this.maxLevel = list;
        if (z) {
            this.bodyLayoutContainer = getLocationSelectionViewFromStart();
        } else {
            this.bodyLayoutContainer = getLocationSelectionView();
        }
        addView(this.bodyLayoutContainer);
    }

    private LinearLayout getLocationSelectionView() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(getContext(), -1, 1, new LinearLayout.LayoutParams(-1, -2));
        List<LocationMasterBean> listRetrieveLocationMastersAssignedToUser = this.locationService.retrieveLocationMastersAssignedToUser();
        this.locationBeans = listRetrieveLocationMastersAssignedToUser;
        if (listRetrieveLocationMastersAssignedToUser.isEmpty()) {
            linearLayout.addView(MyStaticComponents.generateInstructionView(getContext(), "No location found. Please refresh and try again"));
            this.locationService.clearLocationMasterTable();
        } else {
            addLocationSpinner(linearLayout);
        }
        return linearLayout;
    }

    private LinearLayout getLocationSelectionViewFromStart() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(getContext(), -1, 1, new LinearLayout.LayoutParams(-1, -2));
        List<LocationMasterBean> locationWithNoParent = this.locationService.getLocationWithNoParent();
        this.locationBeans = locationWithNoParent;
        if (locationWithNoParent.isEmpty()) {
            linearLayout.addView(MyStaticComponents.generateInstructionView(getContext(), "No location found. Please refresh and try again"));
            this.locationService.clearLocationMasterTable();
        } else {
            addLocationSpinner(linearLayout);
        }
        return linearLayout;
    }

    public void addLocationSpinner(LinearLayout linearLayout) {
        String name;
        LocationBean locationBeanByActualId;
        int i = 1;
        String[] strArr = new String[this.locationBeans.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        String str = null;
        for (LocationMasterBean locationMasterBean : this.locationBeans) {
            String type = locationMasterBean.getType();
            Integer parent = locationMasterBean.getParent();
            if (parent != null && (locationBeanByActualId = this.locationService.getLocationBeanByActualId(String.valueOf(parent))) != null) {
                name = locationBeanByActualId.getName();
            } else {
                name = "";
            }
            if (locationMasterBean.getFhwDetailString() != null) {
                strArr[i] = name + " -> " + locationMasterBean.getName() + " - " + ((String) ((Map) ((List) new Gson().fromJson(locationMasterBean.getFhwDetailString(), this.mapType)).get(0)).get("name"));
            } else {
                strArr[i] = locationMasterBean.getName() + " - " + name;
            }
            i++;
            str = type;
        }
        Integer locationLevelByType = this.locationService.getLocationLevelByType(this.locationBeans.get(0).getType());
        if (locationLevelByType == null) {
            locationLevelByType = this.locationBeans.get(0).getLevel();
        }
        this.locationMap.put(locationLevelByType, this.locationBeans);
        Spinner spinner = MyStaticComponents.getSpinner(getContext(), strArr, 0, locationLevelByType.intValue());
        spinner.setOnItemSelectedListener(this);
        String locationTypeNameByType = this.locationService.getLocationTypeNameByType(str);
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, getContext(), "Select " + locationTypeNameByType);
        linearLayout.addView(materialTextViewGenerateQuestionView);
        linearLayout.addView(spinner);
        this.spinnerMap.put(locationLevelByType, spinner);
        this.selectTextViewMap.put(locationLevelByType, materialTextViewGenerateQuestionView);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        int id = adapterView.getId();
        if (i == 0) {
            this.selectedLocation = null;
            setLocationSelectionInterface();
            removeSpinners(Integer.valueOf(id));
            return;
        }
        List<LocationMasterBean> list = this.locationMap.get(Integer.valueOf(id));
        if (list == null || list.isEmpty()) {
            setLocationSelectionInterface();
            removeSpinners(Integer.valueOf(id));
            return;
        }
        int i2 = 1;
        LocationMasterBean locationMasterBean = list.get(i - 1);
        List<String> list2 = this.maxLevel;
        List<LocationMasterBean> listRetrieveLocationMasterBeansByParent = (list2 == null || list2.isEmpty() || !this.maxLevel.contains(locationMasterBean.getType())) ? this.locationService.retrieveLocationMasterBeansByParent(Integer.valueOf(locationMasterBean.getActualID().intValue())) : null;
        if (listRetrieveLocationMasterBeansByParent == null || listRetrieveLocationMasterBeansByParent.isEmpty()) {
            this.selectedLocation = locationMasterBean;
            setLocationSelectionInterface();
            removeSpinners(Integer.valueOf(id));
            return;
        }
        this.selectedLocation = null;
        int i3 = id + 1;
        this.locationMap.put(Integer.valueOf(i3), listRetrieveLocationMasterBeansByParent);
        removeSpinners(Integer.valueOf(id));
        String[] strArr = new String[listRetrieveLocationMasterBeansByParent.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        String str = null;
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
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, getContext(), "Select " + locationTypeNameByType);
        this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        this.bodyLayoutContainer.addView(spinner);
        this.spinnerMap.put(Integer.valueOf(i3), spinner);
        this.selectTextViewMap.put(Integer.valueOf(i3), materialTextViewGenerateQuestionView);
        setLocationSelectionInterface();
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

    public List<Integer> getSelectedLocationIds() {
        ArrayList arrayList = new ArrayList();
        LocationMasterBean locationMasterBean = this.selectedLocation;
        if (locationMasterBean != null) {
            arrayList.add(Integer.valueOf(locationMasterBean.getActualID().intValue()));
        }
        return arrayList;
    }

    public void setLocationSelectionInterface() {
        LocationSelectionInterface locationSelectionInterface = this.locationSelectionInterface;
        if (locationSelectionInterface != null) {
            locationSelectionInterface.onLocationSelect(getSelectedLocation());
        }
    }
}
