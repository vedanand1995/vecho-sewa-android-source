package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.core.MalariaService;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MalariaServiceImpl implements MalariaService {
    private static final String TAG = "MalariaServiceImpl";
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;

    @Override // com.argusoft.sewa.android.app.core.MalariaService
    public List<MemberDataBean> retrieveMembersForMalariaByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(2, -1);
            calendar.getTime();
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), new Where[0]).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.MalariaService
    public List<MemberDataBean> retrieveMembersForMalariaReExamine(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("malariaExamined"), where.eq("malariaExamined", Boolean.FALSE), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("malariaExamined"), where.eq("malariaExamined", Boolean.FALSE)).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }
}
