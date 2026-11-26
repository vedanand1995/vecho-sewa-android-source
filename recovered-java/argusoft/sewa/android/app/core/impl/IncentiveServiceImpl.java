package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.IncentiveService;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.IncentiveOccurrenceBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.PreviousYearIncentive;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class IncentiveServiceImpl implements IncentiveService {
    private static final String TAG = "IncentiveImpl";
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<IncentiveMaster, Integer> incentiveMasterDao;
    Dao<IncentiveMonthlyDetailsBean, Integer> incentiveMonthlyDetailBeanDao;
    Dao<IncentiveOccurrenceBean, Integer> incentiveOccurrenceBeansDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<PreviousYearIncentive, Integer> previousYearIncentivesDao;

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<IncentiveMonthlyDetailsBean> retrievePendingIncentives() {
        try {
            return this.incentiveMonthlyDetailBeanDao.queryBuilder().where().in("status", IncentiveMonthlyDetailsBean.Status.PENDING_STATUSES).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return Collections.emptyList();
        }
    }

    public IncentiveOccurrenceBean retrieveIncentiveOccurrence(Long l, int i) {
        try {
            return this.incentiveOccurrenceBeansDao.queryBuilder().where().eq(FieldNameConstants.USER_ID, l).and().eq("incentiveId", Integer.valueOf(i)).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<IncentiveMonthlyDetailsBean> retrieveAshaApprovedIncentives(int i) {
        try {
            return this.incentiveMonthlyDetailBeanDao.queryBuilder().where().in("status", IncentiveMonthlyDetailsBean.Status.ASHA_APPROVED).and().eq(FieldNameConstants.USER_ID, Integer.valueOf(i)).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<IncentiveMonthlyDetailsBean> retrieveAshaFacApprovedIncentives(int i) {
        try {
            return this.incentiveMonthlyDetailBeanDao.queryBuilder().where().in("status", IncentiveMonthlyDetailsBean.Status.AF_APPROVED).and().eq(FieldNameConstants.USER_ID, Integer.valueOf(i)).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<IncentiveMonthlyDetailsBean> retrieveApprovedIncentives() {
        try {
            Where<IncentiveMonthlyDetailsBean, Integer> where = this.incentiveMonthlyDetailBeanDao.queryBuilder().where();
            where.in("status", IncentiveMonthlyDetailsBean.Status.MO_REFERRED_TO_CHO).query();
            return where.query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public IncentiveMaster getIncentiveMasterById(Integer num) {
        try {
            return this.incentiveMasterDao.queryBuilder().where().eq("actualId", num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<PreviousYearIncentive> retrievePreviousIncentives(Long l) {
        ArrayList arrayList = new ArrayList();
        try {
            return this.previousYearIncentivesDao.queryBuilder().where().eq(FieldNameConstants.USER_ID, l).query();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public IncentiveMonthlyDetailsBean retrieveIncentiveMonthlyBeanByActualId(Integer num) {
        try {
            return this.incentiveMonthlyDetailBeanDao.queryBuilder().where().eq("actualId", num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public IncentiveMaster retrieveIncentiveMasterByIncentiveCode(String str) {
        try {
            return this.incentiveMasterDao.queryBuilder().where().in("code", str).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    public List<IncentiveMonthlyDetailsBean> retrieveIncentiveMonthlyBeanForChoReapproval(int i) {
        try {
            Where<IncentiveMonthlyDetailsBean, Integer> where = this.incentiveMonthlyDetailBeanDao.queryBuilder().where();
            where.and(where.in("status", IncentiveMonthlyDetailsBean.Status.REAPPROVAL_PENDING), where.isNotNull("incentiveDetails"), where.eq(FieldNameConstants.USER_ID, Integer.valueOf(i))).query();
            return where.query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<MemberDataBean> retrieveMemberListByCode(String str, CharSequence charSequence, Long l, Long l2) {
        List<String[]> results;
        ArrayList arrayList = new ArrayList();
        try {
            String queryForList = this.incentiveMasterDao.queryBuilder().where().eq("code", str).queryForFirst().getQueryForList();
            if (charSequence != null && !charSequence.toString().isEmpty()) {
                String strReplace = queryForList.replace("limit ? ", " AND (uniqueHealthId LIKE ? OR firstName LIKE ? OR memberbean.familyId LIKE ? OR mobileNumber LIKE ?) limit ? ");
                results = this.incentiveMasterDao.queryRaw(strReplace, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, l.toString(), l2.toString()).getResults();
            } else {
                results = this.incentiveMasterDao.queryRaw(queryForList, l.toString(), l2.toString()).getResults();
            }
            Iterator<MemberBean> it = getMembersByIds(charSequence, results).iterator();
            while (it.hasNext()) {
                arrayList.add(new MemberDataBean(it.next()));
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.IncentiveService
    public List<FamilyDataBean> retrieveFamilyListByCode(String str, CharSequence charSequence, Long l, Long l2) {
        List<String[]> results;
        ArrayList arrayList = new ArrayList();
        try {
            String queryForList = this.incentiveMasterDao.queryBuilder().where().eq("code", str).queryForFirst().getQueryForList();
            if (charSequence != null && !charSequence.toString().isEmpty()) {
                String strReplace = queryForList.replace("limit ? ", " AND (familyId LIKE ? OR address1 LIKE ? OR address2 LIKE ?) limit ? ");
                results = this.incentiveMasterDao.queryRaw(strReplace, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR, l.toString(), l2.toString()).getResults();
            } else {
                results = this.incentiveMasterDao.queryRaw(queryForList, l.toString(), l2.toString()).getResults();
            }
            Iterator<FamilyBean> it = getFamiliesByIds(charSequence, results).iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), null));
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return arrayList;
    }

    private List<MemberBean> getMembersByIds(CharSequence charSequence, List<String[]> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String[]> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next()[0]);
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            return this.memberBeanDao.queryBuilder().where().in("actualId", arrayList).query();
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            return arrayList2;
        }
    }

    private List<FamilyBean> getFamiliesByIds(CharSequence charSequence, List<String[]> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String[]> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next()[0]);
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            return this.familyBeanDao.queryBuilder().where().in("actualId", arrayList).query();
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            return arrayList2;
        }
    }
}
