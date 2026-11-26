package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.NPCBService;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NPCBServiceImpl implements NPCBService {
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;

    @Override // com.argusoft.sewa.android.app.core.NPCBService
    public List<MemberDataBean> fhwRetrieveMembersForNPCBScreening(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, 11);
        calendar.set(5, 31);
        calendar.add(1, -40);
        Date time = calendar.getTime();
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw("(imtMemberNpcbStatus IS NULL) DESC, imtMemberNpcbStatus DESC").where();
                if (str != null && !str.isEmpty()) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time)).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.NPCBService
    public List<MemberDataBean> ashaRetrievingMembersForNPCBScreening(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, 11);
        calendar.set(5, 31);
        calendar.add(1, -40);
        Date time = calendar.getTime();
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw("(imtMemberNpcbStatus IS NULL) DESC, imtMemberNpcbStatus DESC").where();
                if (str != null && !str.isEmpty()) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time), where.isNull(FieldNameConstants.NPCB_SCREENING_STATUS), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time), where.isNull(FieldNameConstants.NPCB_SCREENING_STATUS)).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.NPCBService
    public List<MemberDataBean> choRetrievingMembersForNPCBScreening(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, 11);
        calendar.set(5, 31);
        calendar.add(1, -40);
        Date time = calendar.getTime();
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw("(imtMemberNpcbStatus IS NULL) DESC, imtMemberNpcbStatus DESC").where();
                if (str != null && !str.isEmpty()) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time), where.isNull(FieldNameConstants.NPCB_SCREENING_STATUS), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time), where.isNull(FieldNameConstants.NPCB_SCREENING_STATUS)).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.NPCBService
    public List<MemberDataBean> retrieveMembersSentByFieldHealthWorkers(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, 11);
        calendar.set(5, 31);
        calendar.add(1, -40);
        Date time = calendar.getTime();
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("familyId", false).where();
                if (str != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.isNotNull(FieldNameConstants.NPCB_SCREENING_STATUS), where.le("dob", time), where.eq(FieldNameConstants.NPCB_SCREENING_STATUS, FieldNameConstants.REFERRED_TO_CHO), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.isNotNull(FieldNameConstants.NPCB_SCREENING_STATUS), where.le("dob", time), where.eq(FieldNameConstants.NPCB_SCREENING_STATUS, FieldNameConstants.REFERRED_TO_CHO)).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.NPCBService
    public List<MemberDataBean> retrieveMembersForNPCBSentByOA(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, 11);
        calendar.set(5, 31);
        calendar.add(1, -40);
        Date time = calendar.getTime();
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("familyId", false).where();
                if (str != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull("dob"), where.le("dob", time)).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }
}
