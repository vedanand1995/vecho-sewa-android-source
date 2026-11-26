package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.core.DailyNutritionLogService;
import com.argusoft.sewa.android.app.model.DailyNutritionLogBean;
import com.j256.ormlite.dao.Dao;
import java.util.Date;

/* loaded from: classes.dex */
public class DailyNutritionLogServiceImpl implements DailyNutritionLogService {
    private static final String TAG = "DNLService";
    Dao<DailyNutritionLogBean, Integer> dailyNutritionLogBeanDao;

    @Override // com.argusoft.sewa.android.app.core.DailyNutritionLogService
    public DailyNutritionLogBean retrieveDailyNutritionLogByLocationId(Integer num) {
        try {
            return this.dailyNutritionLogBeanDao.queryBuilder().where().eq("locationId", num).queryForFirst();
        } catch (Exception e) {
            Log.e(TAG, e.getLocalizedMessage());
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.DailyNutritionLogService
    public void createOrUpdateDailyNutritionLogByLocationId(Integer num) {
        try {
            DailyNutritionLogBean dailyNutritionLogBeanQueryForFirst = this.dailyNutritionLogBeanDao.queryBuilder().where().eq("locationId", num).queryForFirst();
            if (dailyNutritionLogBeanQueryForFirst == null) {
                dailyNutritionLogBeanQueryForFirst = new DailyNutritionLogBean();
                dailyNutritionLogBeanQueryForFirst.setLocationId(num);
            }
            dailyNutritionLogBeanQueryForFirst.setSeviceDate(Long.valueOf(new Date().getTime()));
            this.dailyNutritionLogBeanDao.createOrUpdate(dailyNutritionLogBeanQueryForFirst);
        } catch (Exception e) {
            Log.e(TAG, e.getLocalizedMessage());
        }
    }
}
