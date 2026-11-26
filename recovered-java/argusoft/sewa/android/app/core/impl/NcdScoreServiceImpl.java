package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.NcdScoreService;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
public class NcdScoreServiceImpl implements NcdScoreService {
    public Dao<MemberBean, Integer> memberBeanDao;
    private static final Integer SMOKE_CONSUME_PRODUCT_QUE_ID = 12;
    private static final Integer CONSUME_ALCOHOL_QUE_ID = 13;
    private static final Integer WAIST_MALE_QUE_ID = 1502;
    private static final Integer WAIST_FEMALE_QUE_ID = 1501;
    private static final Integer PHYSICAL_ACTIVITY_QUE_ID = 16;
    private static final Integer BP_DIABETES_HISTORY_QUE_ID = 17;

    @Override // com.argusoft.sewa.android.app.core.NcdScoreService
    public Integer calculateCbacScoreForMember() {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID);
        if (str == null) {
            return null;
        }
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", Long.valueOf(str)).queryForFirst();
            Date dob = memberBeanQueryForFirst.getDob();
            Calendar calendar = Calendar.getInstance();
            int i = 1;
            int i2 = calendar.get(1);
            calendar.setTime(dob);
            int i3 = i2 - calendar.get(1);
            if (i3 < 40 || i3 >= 50) {
                i = i3 >= 50 ? 2 : 0;
            }
            QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(SMOKE_CONSUME_PRODUCT_QUE_ID);
            if (queFormBean != null && queFormBean.getAnswer() != null) {
                String string = queFormBean.getAnswer().toString();
                if (string.equals("IN_PAST")) {
                    i++;
                } else if (string.equals("DAILY")) {
                    i += 2;
                }
            }
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(CONSUME_ALCOHOL_QUE_ID);
            if (queFormBean2 != null && queFormBean2.getAnswer() != null && queFormBean2.getAnswer().toString().equals(MorbiditiesConstant.ONE_PLUS)) {
                i++;
            }
            if (memberBeanQueryForFirst.getGender().equals("M")) {
                QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(WAIST_MALE_QUE_ID);
                if (queFormBean3 != null && queFormBean3.getAnswer() != null) {
                    String string2 = queFormBean3.getAnswer().toString();
                    if (string2.equals("91TO100")) {
                        i++;
                    } else if (string2.equals("GT100")) {
                        i += 2;
                    }
                }
            } else {
                QueFormBean queFormBean4 = SharedStructureData.mapIndexQuestion.get(WAIST_FEMALE_QUE_ID);
                if (queFormBean4 != null && queFormBean4.getAnswer() != null) {
                    String string3 = queFormBean4.getAnswer().toString();
                    if (string3.equals("81TO90")) {
                        i++;
                    } else if (string3.equals("GT90")) {
                        i += 2;
                    }
                }
            }
            QueFormBean queFormBean5 = SharedStructureData.mapIndexQuestion.get(PHYSICAL_ACTIVITY_QUE_ID);
            if (queFormBean5 != null && queFormBean5.getAnswer() != null && queFormBean5.getAnswer().toString().equals("LESS_THAN_150")) {
                i++;
            }
            QueFormBean queFormBean6 = SharedStructureData.mapIndexQuestion.get(BP_DIABETES_HISTORY_QUE_ID);
            if (queFormBean6 != null && queFormBean6.getAnswer() != null && queFormBean6.getAnswer().toString().equals(MorbiditiesConstant.ONE_PLUS)) {
                i += 2;
            }
            return Integer.valueOf(i);
        } catch (SQLException e) {
            Log.e(getClass().getName(), "SQL Exception", e);
            return null;
        }
    }
}
