package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.HealthInfrastructureService;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HealthInfrastructureServiceImpl implements HealthInfrastructureService {
    Dao<HealthInfrastructureBean, Integer> infrastructureBeanDao;
    Dao<SmartReferralScheduleExceptionBean, Integer> smartReferralScheduleExceptionBeanDao;
    Dao<SmartReferralScheduleMasterBean, Integer> smartReferralScheduleMasterBeanDao;

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public Map<Long, String> retrieveDistinctHealthInfraType() {
        HashMap map = new HashMap();
        try {
            for (HealthInfrastructureBean healthInfrastructureBean : this.infrastructureBeanDao.queryBuilder().distinct().selectColumns(FieldNameConstants.TYPE_ID, FieldNameConstants.TYPE_NAME).query()) {
                map.put(healthInfrastructureBean.getTypeId(), healthInfrastructureBean.getTypeName());
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        return map;
    }

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public List<HealthInfrastructureBean> retrieveHealthInfraBySearch(String str, Long l, String str2) {
        List<HealthInfrastructureBean> listQuery;
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        Where<HealthInfrastructureBean, Integer> where = this.infrastructureBeanDao.queryBuilder().where();
        if (str2 == null) {
            listQuery = where.and(where.eq(FieldNameConstants.TYPE_ID, l), where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like(FieldNameConstants.ENGLISH_NAME, GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]), new Where[0]).query();
        } else {
            try {
                if (str2.trim().isEmpty()) {
                    listQuery = where.and(where.eq(FieldNameConstants.TYPE_ID, l), where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like(FieldNameConstants.ENGLISH_NAME, GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]), new Where[0]).query();
                } else {
                    String[] strArrSplit = str2.split(GlobalTypes.COMMA);
                    StringBuilder sb = new StringBuilder();
                    sb.append("(");
                    int length = strArrSplit.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        String str3 = strArrSplit[i];
                        if (i2 == 0) {
                            sb.append("`");
                            sb.append(str3);
                            sb.append("`");
                            sb.append(" = 1");
                            strArr = strArrSplit;
                        } else {
                            strArr = strArrSplit;
                            sb.append(" OR ");
                            sb.append("`");
                            sb.append(str3);
                            sb.append("`");
                            sb.append(" =1");
                        }
                        i2++;
                        i++;
                        strArrSplit = strArr;
                    }
                    sb.append(")");
                    listQuery = where.and(where.eq(FieldNameConstants.TYPE_ID, l), where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like(FieldNameConstants.ENGLISH_NAME, GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]), where.raw(sb.toString(), new ArgumentHolder[0])).query();
                }
            } catch (SQLException e) {
                Log.e(getClass().getName(), null, e);
                return arrayList;
            }
        }
        return listQuery;
    }

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public List<HealthInfrastructureBean> retrieveHealthInfraByLocationId(Long l, Long l2, String str) {
        List<HealthInfrastructureBean> listQuery;
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            listQuery = this.infrastructureBeanDao.queryBuilder().where().eq("locationId", l).and().eq(FieldNameConstants.TYPE_ID, l2).query();
        } else {
            try {
                if (str.trim().isEmpty()) {
                    listQuery = this.infrastructureBeanDao.queryBuilder().where().eq("locationId", l).and().eq(FieldNameConstants.TYPE_ID, l2).query();
                } else {
                    String[] strArrSplit = str.split(GlobalTypes.COMMA);
                    StringBuilder sb = new StringBuilder();
                    sb.append("(");
                    int i = 0;
                    for (String str2 : strArrSplit) {
                        if (i == 0) {
                            sb.append("`");
                            sb.append(str2);
                            sb.append("`");
                            sb.append(" =1");
                        } else {
                            sb.append(" OR ");
                            sb.append("`");
                            sb.append(str2);
                            sb.append("`");
                            sb.append(" =1");
                        }
                        i++;
                    }
                    sb.append(")");
                    listQuery = this.infrastructureBeanDao.queryBuilder().where().eq("locationId", l).and().eq(FieldNameConstants.TYPE_ID, l2).and().raw(sb.toString(), new ArgumentHolder[0]).query();
                }
            } catch (SQLException e) {
                Log.e(getClass().getName(), null, e);
                return arrayList;
            }
        }
        return listQuery;
    }

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public List<SmartReferralScheduleMasterBean> retrieveSmartMasterByHospitalInfraId(Long l, String str) {
        ArrayList arrayList = new ArrayList();
        int i = Calendar.getInstance().get(7);
        try {
            return this.smartReferralScheduleMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.HOSPITAL_INFRA_ID, l).and().eq(FieldNameConstants.DEPARTMENT_NAME, str).and().eq(FieldNameConstants.WEEK_DAY, Integer.valueOf(i == 1 ? 6 : i - 2)).query();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public List<SmartReferralScheduleExceptionBean> retrieveSmartExceptionByHospitalInfraId(Long l, String str) {
        ArrayList arrayList = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        UtilBean.clearTimeFromDate(calendar);
        try {
            return this.smartReferralScheduleExceptionBeanDao.queryBuilder().where().eq(FieldNameConstants.HOSPITAL_INFRA_ID, l).and().eq(FieldNameConstants.DEPARTMENT_NAME, str).and().ge(FieldNameConstants.EXCEPTION_DATE, calendar.getTime()).query();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public HealthInfrastructureBean getHealthInfraByActualId(Integer num) {
        try {
            return this.infrastructureBeanDao.queryBuilder().where().eq("actualId", num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.HealthInfrastructureService
    public List<HealthInfrastructureBean> retrieveHealthInfraByTypeAndLocations(List<String> list, List<Integer> list2) {
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    return this.infrastructureBeanDao.queryBuilder().where().eq("state", GlobalTypes.STATUS_ACTIVE).and().in("locationId", list2).and().in(FieldNameConstants.TYPE_NAME, list).query();
                }
            } catch (SQLException e) {
                Log.e(getClass().getName(), null, e);
                return Collections.emptyList();
            }
        }
        return this.infrastructureBeanDao.queryBuilder().where().eq("state", GlobalTypes.STATUS_ACTIVE).and().in("locationId", list2).query();
    }
}
