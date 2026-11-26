package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import java.util.List;

/* loaded from: classes.dex */
public interface LocationMasterService {
    void clearLocationMasterTable();

    List<Integer> getAllLocationIdsInsideDistrictOfAssignedLocation();

    LocationMasterBean getBlockLevelAncestor(Integer num);

    LocationBean getLocationBeanByActualId(String str);

    List<LocationMasterBean> getLocationByTypesAndAssignedLocation(List<String> list);

    List<Integer> getLocationIdsAssignedToUser();

    Integer getLocationLevelByType(String str);

    LocationMasterBean getLocationMasterBeanByActualId(Integer num);

    String getLocationTypeNameByType(String str);

    List<LocationMasterBean> getLocationWithNoParent();

    List<LocationMasterBean> retrieveAllAshaAreaAssignedToUser();

    List<Integer> retrieveAllAshaAreaIdsUnderAssignedLocation();

    List<LocationBean> retrieveLocationBeansAssignedToUser();

    List<LocationBean> retrieveLocationBeansByLevelAndParent(Integer num, Long l);

    List<LocationBean> retrieveLocationBeansByParent(Long l);

    String retrieveLocationHierarchyByLocationId(Long l);

    List<LocationMasterBean> retrieveLocationMasterBeansByLevel(Integer num);

    List<LocationMasterBean> retrieveLocationMasterBeansByLevelAndParent(Integer num, Long l);

    List<LocationMasterBean> retrieveLocationMasterBeansByParent(Integer num);

    List<LocationMasterBean> retrieveLocationMasterBeansByParentIdList(List<Integer> list);

    List<LocationMasterBean> retrieveLocationMasterBeansBySearch(CharSequence charSequence, Integer num);

    List<LocationMasterBean> retrieveLocationMastersAssignedToUser();

    List<LocationBean> retrieveSubCenterListForFHSR();

    List<LocationMasterBean> retrieveVillagesUnderAncestor(Integer num);
}
