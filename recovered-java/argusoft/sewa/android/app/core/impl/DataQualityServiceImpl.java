package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.core.DataQualityService;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DataQualityServiceImpl implements DataQualityService {
    Dao<DataQualityBean, Integer> dataQualityBeanDao;

    public List<DataQualityBean> getAllDataQualityBeans() {
        try {
            return this.dataQualityBeanDao.queryForAll();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return new ArrayList();
        }
    }
}
