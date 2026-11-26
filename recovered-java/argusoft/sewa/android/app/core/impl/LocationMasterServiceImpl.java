package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LocationTypeBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LocationMasterServiceImpl implements LocationMasterService {
    private static final int DISTRICT_LEVEL = 2;
    private static final int VILLAGE_LEVEL = 6;
    Dao<LocationBean, Integer> locationBeanDao;
    Dao<LocationMasterBean, Integer> locationMasterBeanDao;
    Dao<LocationTypeBean, Integer> locationTypeBeanDao;
    private static final List<String> DISTRICT_TYPES = Arrays.asList(LocationConstants.LocationType.DISTRICT, "C");
    private static final List<String> VILLAGE_TYPES = Arrays.asList(LocationConstants.LocationType.VILLAGE, LabelConstants.UA, "ANG");

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveLocationMasterBeansByLevelAndParent(Integer num, Long l) {
        ArrayList arrayList = new ArrayList();
        if (l == null) {
            return arrayList;
        }
        try {
            return this.locationMasterBeanDao.queryBuilder().orderBy("name", true).where().eq(FieldNameConstants.PARENT, l).and().eq("level", num).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveLocationMasterBeansBySearch(CharSequence charSequence, Integer num) {
        ArrayList arrayList = new ArrayList();
        try {
            Where<LocationMasterBean, Integer> whereLike = this.locationMasterBeanDao.queryBuilder().where().like("name", ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR);
            if (num != null) {
                whereLike = whereLike.and().eq("level", num);
            }
            return whereLike.query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationBean> retrieveLocationBeansByLevelAndParent(Integer num, Long l) {
        ArrayList arrayList = new ArrayList();
        if (l == null) {
            return arrayList;
        }
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().eq(FieldNameConstants.PARENT, l).and().eq("level", num).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationBean> retrieveSubCenterListForFHSR() {
        if (SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : SewaTransformer.loginBean.getVillageCode().split(":")) {
            arrayList.add(Integer.valueOf(str));
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().in(FieldNameConstants.PARENT, arrayList).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public String retrieveLocationHierarchyByLocationId(Long l) {
        StringBuilder sb = new StringBuilder();
        try {
            LocationMasterBean locationMasterBeanQueryForFirst = this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, l).queryForFirst();
            if (locationMasterBeanQueryForFirst != null) {
                sb.append(locationMasterBeanQueryForFirst.getName());
                for (int iIntValue = locationMasterBeanQueryForFirst.getLevel().intValue(); iIntValue > 2; iIntValue--) {
                    locationMasterBeanQueryForFirst = this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, locationMasterBeanQueryForFirst.getParent()).queryForFirst();
                    sb.insert(0, locationMasterBeanQueryForFirst.getName() + " > ");
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return sb.toString();
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public LocationBean getLocationBeanByActualId(String str) {
        try {
            return this.locationBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, str).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public LocationMasterBean getLocationMasterBeanByActualId(Integer num) {
        try {
            return this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public String getLocationTypeNameByType(String str) {
        LocationTypeBean locationTypeBeanQueryForFirst;
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            locationTypeBeanQueryForFirst = this.locationTypeBeanDao.queryBuilder().where().eq("type", str).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            locationTypeBeanQueryForFirst = null;
        }
        if (locationTypeBeanQueryForFirst == null) {
            return null;
        }
        return locationTypeBeanQueryForFirst.getName();
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveLocationMasterBeansByParent(Integer num) {
        ArrayList arrayList = new ArrayList();
        if (num == null) {
            return arrayList;
        }
        try {
            return this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.PARENT, num).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveLocationMasterBeansByLevel(Integer num) {
        ArrayList arrayList = new ArrayList();
        if (num == null) {
            return arrayList;
        }
        try {
            return this.locationMasterBeanDao.queryBuilder().orderBy("name", true).where().eq("level", num).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveLocationMastersAssignedToUser() {
        if (SewaTransformer.loginBean == null || SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return Collections.emptyList();
        }
        try {
            return this.locationMasterBeanDao.queryBuilder().orderBy("name", true).where().in(FieldNameConstants.ACTUAL_I_D, getLocationIdsAssignedToUser()).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<Integer> getLocationIdsAssignedToUser() {
        ArrayList arrayList = new ArrayList();
        for (String str : SewaTransformer.loginBean.getVillageCode().split(":")) {
            arrayList.add(Integer.valueOf(str));
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> getLocationWithNoParent() {
        ArrayList arrayList = new ArrayList();
        try {
            return this.locationMasterBeanDao.queryBuilder().where().isNull(FieldNameConstants.PARENT).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public void clearLocationMasterTable() {
        try {
            TableUtils.clearTable(this.locationMasterBeanDao.getConnectionSource(), LocationMasterBean.class);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public Integer getLocationLevelByType(String str) {
        LocationTypeBean locationTypeBeanQueryForFirst;
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            locationTypeBeanQueryForFirst = this.locationTypeBeanDao.queryBuilder().where().eq("type", str).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            locationTypeBeanQueryForFirst = null;
        }
        if (locationTypeBeanQueryForFirst == null) {
            return null;
        }
        return locationTypeBeanQueryForFirst.getLevel();
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<Integer> getAllLocationIdsInsideDistrictOfAssignedLocation() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(LocationConstants.LocationType.DISTRICT);
        arrayList.add(LocationConstants.LocationType.ZONE);
        List<LocationMasterBean> locationByTypesAndAssignedLocation = getLocationByTypesAndAssignedLocation(arrayList);
        HashSet hashSet = new HashSet();
        if (locationByTypesAndAssignedLocation != null) {
            Iterator<LocationMasterBean> it = locationByTypesAndAssignedLocation.iterator();
            while (it.hasNext()) {
                hashSet.add(Integer.valueOf(it.next().getActualID().intValue()));
            }
            List<LocationMasterBean> listRetrieveLocationMasterBeansByParentIdList = retrieveLocationMasterBeansByParentIdList(new ArrayList(hashSet));
            while (listRetrieveLocationMasterBeansByParentIdList != null && !listRetrieveLocationMasterBeansByParentIdList.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByParentIdList) {
                    hashSet.add(Integer.valueOf(locationMasterBean.getActualID().intValue()));
                    arrayList2.add(Integer.valueOf(locationMasterBean.getActualID().intValue()));
                }
                listRetrieveLocationMasterBeansByParentIdList = retrieveLocationMasterBeansByParentIdList(arrayList2);
            }
        }
        return new ArrayList(hashSet);
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> getLocationByTypesAndAssignedLocation(List<String> list) {
        List<LocationMasterBean> listQuery;
        try {
            listQuery = this.locationMasterBeanDao.queryBuilder().where().in(FieldNameConstants.ACTUAL_I_D, getLocationIdsAssignedToUser().get(0)).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            listQuery = null;
        }
        ArrayList arrayList = new ArrayList();
        while (listQuery != null && !listQuery.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (LocationMasterBean locationMasterBean : listQuery) {
                arrayList2.add(locationMasterBean.getParent());
                if (locationMasterBean.getType() != null && list.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean);
                }
            }
            try {
                listQuery = arrayList.isEmpty() ? this.locationMasterBeanDao.queryBuilder().where().in(FieldNameConstants.ACTUAL_I_D, arrayList2).query() : null;
            } catch (SQLException e2) {
                Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
            }
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveLocationMasterBeansByParentIdList(List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        try {
            return this.locationMasterBeanDao.queryBuilder().where().in(FieldNameConstants.PARENT, list).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationBean> retrieveLocationBeansAssignedToUser() {
        if (SewaTransformer.loginBean == null || SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : SewaTransformer.loginBean.getVillageCode().split(":")) {
            arrayList.add(Integer.valueOf(str));
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().in(FieldNameConstants.ACTUAL_I_D, arrayList).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationBean> retrieveLocationBeansByParent(Long l) {
        ArrayList arrayList = new ArrayList();
        if (l == null) {
            return arrayList;
        }
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().eq(FieldNameConstants.PARENT, l).and().isNotNull("type").query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveAllAshaAreaAssignedToUser() {
        if (SewaTransformer.loginBean == null || SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return Collections.emptyList();
        }
        List<Integer> locationIdsAssignedToUser = getLocationIdsAssignedToUser();
        try {
            if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
                return this.locationMasterBeanDao.queryBuilder().orderBy("name", true).where().in("actualId", locationIdsAssignedToUser).query();
            }
            return this.locationMasterBeanDao.queryBuilder().orderBy("name", true).where().in(FieldNameConstants.PARENT, locationIdsAssignedToUser).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<Integer> retrieveAllAshaAreaIdsUnderAssignedLocation() {
        ArrayList arrayList = new ArrayList();
        List<LocationMasterBean> listRetrieveLocationMastersAssignedToUser = retrieveLocationMastersAssignedToUser();
        while (listRetrieveLocationMastersAssignedToUser != null && !listRetrieveLocationMastersAssignedToUser.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMastersAssignedToUser) {
                if (locationMasterBean.getActualID() != null) {
                    if (isAshaAreaType(locationMasterBean.getType())) {
                        arrayList.add(Integer.valueOf(locationMasterBean.getActualID().intValue()));
                    } else {
                        arrayList2.add(Integer.valueOf(locationMasterBean.getActualID().intValue()));
                    }
                }
            }
            if (arrayList2.isEmpty()) {
                listRetrieveLocationMastersAssignedToUser = Collections.emptyList();
            } else {
                listRetrieveLocationMastersAssignedToUser = retrieveLocationMasterBeansByParentIdList(arrayList2);
            }
        }
        return arrayList;
    }

    private boolean isAshaAreaType(String str) {
        return "A".equals(str) || "AA".equals(str);
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public LocationMasterBean getBlockLevelAncestor(Integer num) {
        LocationMasterBean locationMasterBeanByActualId;
        LocationMasterBean locationMasterBeanByActualId2 = getLocationMasterBeanByActualId(num);
        while (locationMasterBeanByActualId2 != null && locationMasterBeanByActualId2.getParent() != null && (locationMasterBeanByActualId = getLocationMasterBeanByActualId(locationMasterBeanByActualId2.getParent())) != null) {
            if ((locationMasterBeanByActualId.getLevel() != null && locationMasterBeanByActualId.getLevel().intValue() == 2) || (locationMasterBeanByActualId.getType() != null && DISTRICT_TYPES.contains(locationMasterBeanByActualId.getType()))) {
                return locationMasterBeanByActualId2;
            }
            locationMasterBeanByActualId2 = locationMasterBeanByActualId;
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.LocationMasterService
    public List<LocationMasterBean> retrieveVillagesUnderAncestor(Integer num) {
        ArrayList arrayList = new ArrayList();
        if (num == null) {
            return arrayList;
        }
        List<LocationMasterBean> listRetrieveLocationMasterBeansByParent = retrieveLocationMasterBeansByParent(num);
        Log.i(getClass().getSimpleName(), "retrieveVillagesUnderAncestor: ancestorId=" + num + " directChildren=" + listRetrieveLocationMasterBeansByParent.size());
        for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByParent) {
            if (Boolean.TRUE.equals(locationMasterBean.getActive())) {
                if ((locationMasterBean.getLevel() != null && locationMasterBean.getLevel().intValue() == 6) || (locationMasterBean.getType() != null && VILLAGE_TYPES.contains(locationMasterBean.getType()))) {
                    arrayList.add(locationMasterBean);
                } else if (locationMasterBean.getLevel() == null || locationMasterBean.getLevel().intValue() <= 6) {
                    arrayList.addAll(retrieveVillagesUnderAncestor(Integer.valueOf(locationMasterBean.getActualID().intValue())));
                }
            }
        }
        return arrayList;
    }
}
