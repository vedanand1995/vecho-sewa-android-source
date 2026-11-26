package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.model.DailyNutritionLogBean;

/* loaded from: classes.dex */
public interface DailyNutritionLogService {
    void createOrUpdateDailyNutritionLogByLocationId(Integer num);

    DailyNutritionLogBean retrieveDailyNutritionLogByLocationId(Integer num);
}
