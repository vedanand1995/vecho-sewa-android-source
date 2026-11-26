package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LocationBeanAllAreaSelectionComponent extends LinearLayout implements AdapterView.OnItemSelectedListener {
    private final LinearLayout bodyLayoutContainer;
    private List<LocationBean> locationBeans;
    private final Map<Integer, List<LocationBean>> locationMap;
    private LocationSelectionInterface locationSelectionInterface;
    private final LocationMasterService locationService;
    private final Map<Integer, MaterialTextView> selectTextViewMap;
    private LocationBean selectedLocation;
    private final boolean showAllOption;
    private final Map<Integer, Spinner> spinnerMap;

    public interface LocationSelectionInterface {
        void onLocationSelect(List<Integer> list);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public LocationBeanAllAreaSelectionComponent(Context context, LocationMasterService locationMasterService) {
        this(context, locationMasterService, null, true);
    }

    public LocationBeanAllAreaSelectionComponent(Context context, LocationMasterService locationMasterService, LocationSelectionInterface locationSelectionInterface) {
        this(context, locationMasterService, locationSelectionInterface, true);
    }

    public LocationBeanAllAreaSelectionComponent(Context context, LocationMasterService locationMasterService, LocationSelectionInterface locationSelectionInterface, boolean z) {
        super(context);
        this.locationMap = new HashMap();
        this.spinnerMap = new HashMap();
        this.selectTextViewMap = new HashMap();
        this.locationService = locationMasterService;
        this.locationSelectionInterface = locationSelectionInterface;
        this.showAllOption = z;
        LinearLayout locationSelectionView = getLocationSelectionView();
        this.bodyLayoutContainer = locationSelectionView;
        addView(locationSelectionView);
    }

    private List<LocationBean> withAllOption(List<LocationBean> list) {
        String type;
        if (!this.showAllOption || list.isEmpty() || (type = list.get(0).getType()) == null || !(type.equals("A") || type.equals("AA"))) {
            return list;
        }
        LocationBean locationBean = new LocationBean();
        locationBean.setActualID(-2);
        locationBean.setName(LabelConstants.ALL);
        locationBean.setLevel(list.get(0).getLevel());
        locationBean.setParent(list.get(0).getParent());
        locationBean.setType(list.get(0).getType());
        ArrayList arrayList = new ArrayList();
        arrayList.add(locationBean);
        arrayList.addAll(list);
        return arrayList;
    }

    private LinearLayout getLocationSelectionView() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(getContext(), -1, 1, new LinearLayout.LayoutParams(-1, -2));
        List<LocationBean> listRetrieveLocationBeansAssignedToUser = this.locationService.retrieveLocationBeansAssignedToUser();
        this.locationBeans = listRetrieveLocationBeansAssignedToUser;
        if (listRetrieveLocationBeansAssignedToUser.isEmpty()) {
            linearLayout.addView(MyStaticComponents.generateInstructionView(getContext(), "No location found. Please refresh and try again"));
        } else {
            addLocationSpinner(linearLayout);
        }
        return linearLayout;
    }

    public void addLocationSpinner(LinearLayout linearLayout) {
        String name;
        LocationBean locationBeanByActualId;
        List<LocationBean> listWithAllOption = withAllOption(this.locationBeans);
        this.locationBeans = listWithAllOption;
        Integer level = listWithAllOption.get(0).getLevel();
        this.locationMap.put(level, this.locationBeans);
        int i = 1;
        String[] strArr = new String[this.locationBeans.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        for (LocationBean locationBean : this.locationBeans) {
            Integer parent = locationBean.getParent();
            if (parent != null && (locationBeanByActualId = this.locationService.getLocationBeanByActualId(String.valueOf(parent))) != null) {
                name = locationBeanByActualId.getName();
            } else {
                name = "";
            }
            if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha") && !locationBean.getName().equals(LabelConstants.ALL)) {
                strArr[i] = name + " -> " + locationBean.getName();
            } else {
                strArr[i] = locationBean.getName();
            }
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(getContext(), strArr, 0, level.intValue());
        spinner.setOnItemSelectedListener(this);
        String locationTypeNameByType = this.locationService.getLocationTypeNameByType(this.locationBeans.get(0).getType());
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(getContext(), "Select " + locationTypeNameByType);
        linearLayout.addView(materialTextViewGenerateSubTitleView);
        linearLayout.addView(spinner);
        this.spinnerMap.put(level, spinner);
        this.selectTextViewMap.put(level, materialTextViewGenerateSubTitleView);
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
        List<LocationBean> list = this.locationMap.get(Integer.valueOf(id));
        if (list == null || list.isEmpty()) {
            setLocationSelectionInterface();
            removeSpinners(Integer.valueOf(id));
            return;
        }
        LocationBean locationBean = list.get(i - 1);
        List<LocationBean> listRetrieveLocationBeansByParent = this.locationService.retrieveLocationBeansByParent(Long.valueOf(locationBean.getActualID().longValue()));
        if (listRetrieveLocationBeansByParent == null || listRetrieveLocationBeansByParent.isEmpty()) {
            this.selectedLocation = locationBean;
            setLocationSelectionInterface();
            removeSpinners(Integer.valueOf(id));
            return;
        }
        this.selectedLocation = null;
        List<LocationBean> listWithAllOption = withAllOption(listRetrieveLocationBeansByParent);
        int i2 = id + 1;
        this.locationMap.put(Integer.valueOf(i2), listWithAllOption);
        removeSpinners(Integer.valueOf(id));
        String[] strArr = new String[listWithAllOption.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        Iterator<LocationBean> it = listWithAllOption.iterator();
        int i3 = 1;
        while (it.hasNext()) {
            strArr[i3] = it.next().getName();
            i3++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(getContext(), strArr, 0, i2);
        spinner.setOnItemSelectedListener(this);
        String locationTypeNameByType = this.locationService.getLocationTypeNameByType(listWithAllOption.get(0).getType());
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(getContext(), "Select " + locationTypeNameByType);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        this.bodyLayoutContainer.addView(spinner);
        this.spinnerMap.put(Integer.valueOf(i2), spinner);
        this.selectTextViewMap.put(Integer.valueOf(i2), materialTextViewGenerateSubTitleView);
        setLocationSelectionInterface();
    }

    private void removeSpinners(Integer num) {
        for (Map.Entry<Integer, List<LocationBean>> entry : this.locationMap.entrySet()) {
            if (entry.getKey().intValue() > num.intValue()) {
                this.bodyLayoutContainer.removeView(this.selectTextViewMap.get(entry.getKey()));
                this.bodyLayoutContainer.removeView(this.spinnerMap.get(entry.getKey()));
            }
        }
    }

    public List<Integer> getSelectedLocationIds() {
        if (this.selectedLocation == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (this.selectedLocation.getName().equalsIgnoreCase(LabelConstants.ALL)) {
            List<LocationBean> list = this.locationMap.get(this.selectedLocation.getLevel());
            if (list != null && !list.isEmpty()) {
                for (LocationBean locationBean : list) {
                    if (locationBean.getActualID().intValue() != -2) {
                        arrayList.add(locationBean.getActualID());
                    } else {
                        arrayList.add(locationBean.getParent());
                    }
                }
            }
        } else {
            arrayList.add(this.selectedLocation.getActualID());
        }
        return arrayList;
    }

    public LocationBean getSelectedLocation() {
        return this.selectedLocation;
    }

    public void setLocationSelectionInterface() {
        LocationSelectionInterface locationSelectionInterface = this.locationSelectionInterface;
        if (locationSelectionInterface != null) {
            locationSelectionInterface.onLocationSelect(getSelectedLocationIds());
        }
    }
}
