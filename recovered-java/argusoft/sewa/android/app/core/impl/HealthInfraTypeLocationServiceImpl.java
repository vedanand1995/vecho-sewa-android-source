package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.HealthInfraTypeLocationService;
import com.argusoft.sewa.android.app.model.HealthInfraTypeLocationBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class HealthInfraTypeLocationServiceImpl implements HealthInfraTypeLocationService {
    Dao<HealthInfraTypeLocationBean, Integer> infraTypeLocationBeanDao;

    @Override // com.argusoft.sewa.android.app.core.HealthInfraTypeLocationService
    public List<Integer> retrieveLocationLevelsById(Long l) {
        LinkedList linkedList = new LinkedList();
        try {
            Iterator<HealthInfraTypeLocationBean> it = this.infraTypeLocationBeanDao.queryBuilder().where().eq(FieldNameConstants.HEALTH_INFRA_TYPE_ID, l).query().iterator();
            while (it.hasNext()) {
                linkedList.add(it.next().getLocationLevel());
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        return linkedList;
    }
}
